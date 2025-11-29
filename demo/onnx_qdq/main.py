
import numpy as np
import torch
import torch.nn as nn
import unittest
import logging
import onnx
from onnx import helper, numpy_helper
import numpy as np

class MLP(nn.Module):
    """
    Multi-Layer Perceptron (MLP) model class.
    Defines a neural network with four linear layers and sigmoid activations.
    """

    def __init__(self) -> object:
        super().__init__()
        # Define model layers
        self.layer0 = nn.Linear(8, 8, bias=True)

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        """
        Forward pass of the MLP model.

        Args:
            x (torch.Tensor): Input tensor.

        Returns:
            torch.Tensor: Output tensor after forward pass.
        """
        x = self.layer0(x)
        x = torch.sigmoid(x)
        return x

def kahn_topological_sort(graph):
    """
    使用 Kahn's Algorithm 对 ONNX 模型的节点进行拓扑排序。

    Args:
        graph (onnx.GraphProto): ONNX 模型的计算图。

    Returns:
        list: 按拓扑顺序排列的节点列表。
    """
    from collections import defaultdict, deque
    # 构建节点的入度表和依赖关系
    in_degree = {node.name: 0 for node in graph.node}  # 初始化所有节点的入度为 0
    dependents = defaultdict(list)  # 存储每个节点的依赖节点

    # 记录输出到节点的映射
    output_to_node = {}
    for node in graph.node:
        for output in node.output:
            output_to_node[output] = node.name

    # 计算每个节点的入度
    for node in graph.node:
        for input_name in node.input:
            if input_name in output_to_node:  # 如果输入是其他节点的输出
                in_degree[node.name] += 1
                dependents[output_to_node[input_name]].append(node.name)

    # 初始化队列，入度为 0 的节点可以直接处理
    queue = deque([node for node in graph.node if in_degree[node.name] == 0])
    sorted_nodes = []  # 存储拓扑排序后的节点

    # Kahn's Algorithm 主循环
    while queue:
        node = queue.popleft()
        sorted_nodes.append(node)  # 将当前节点加入排序结果

        # 遍历当前节点的所有依赖节点
        for dependent_name in dependents[node.name]:
            in_degree[dependent_name] -= 1  # 减少依赖节点的入度
            if in_degree[dependent_name] == 0:  # 如果入度变为 0，则加入队列
                queue.append(next(n for n in graph.node if n.name == dependent_name))

    # 检查是否存在环
    if len(sorted_nodes) != len(graph.node):
        raise RuntimeError("Graph contains cycles or disconnected components!")

    return sorted_nodes

def remove_unused_nodes(graph):
    """
    删除 ONNX 模型中未使用的节点。

    Args:
        graph (onnx.GraphProto): ONNX 模型的计算图。
    """
    # 记录所有被使用的张量名称（包括模型的输入和输出）
    used_tensors = set(inp.name for inp in graph.input)  # 模型输入
    used_tensors.update(out.name for out in graph.output)  # 模型输出

    # 遍历所有节点，记录被使用的输出
    for node in graph.node:
        used_tensors.update(node.input)  # 节点的输入被使用
        used_tensors.update(node.output)  # 节点的输出可能被使用

    # 删除未使用的节点
    unused_nodes = [node for node in graph.node if not any(output in used_tensors for output in node.output)]
    for node in unused_nodes:
        graph.node.remove(node)

    print(f"已删除 {len(unused_nodes)} 个未使用的节点。")

def insert_quant_dequant_nodes(onnx_model_path, output_model_path, target_tensors):
    """
    插入量化和反量化节点到指定的张量。

    Args:
        onnx_model_path (str): 输入的浮点 ONNX 模型路径。
        output_model_path (str): 输出的量化 ONNX 模型路径。
        target_tensors (list): 需要插入量化/反量化的张量名称列表。
    """
    # 加载 ONNX 模型
    model = onnx.load(onnx_model_path)
    graph = model.graph

    # 定义量化参数
    scale = 0.1  # 量化比例
    zero_point = 128  # 零点（uint8 的中点）

    # 遍历图中的节点
    new_nodes = []
    for node in graph.node:
        for idx, input_name in enumerate(node.input):
            if input_name in target_tensors:
                quant_type, quant_scale, quant_zp = target_tensors[input_name]
                # 创建 QuantizeLinear 节点
                quant_scale_name = f"{input_name}_quant_scale"
                quant_zero_point_name = f"{input_name}_quant_zero_point"
                quant_output_name = f"{input_name}_quant"

                quant_node = helper.make_node(
                    "QuantizeLinear",
                    inputs=[input_name, quant_scale_name, quant_zero_point_name],
                    outputs=[quant_output_name],
                    name=f"{input_name}_quant_node"
                )

                # 创建 DequantizeLinear 节点
                dequant_output_name = f"{input_name}_dequant"
                dequant_node = helper.make_node(
                    "DequantizeLinear",
                    inputs=[quant_output_name, quant_scale_name, quant_zero_point_name],
                    outputs=[dequant_output_name],
                    name=f"{input_name}_dequant_node"
                )

                # 替换原始输入为 DequantizeLinear 的输出
                node.input[idx] = dequant_output_name

                # 添加量化参数到图中
                graph.initializer.append(
                    numpy_helper.from_array(np.array(quant_scale, dtype=np.float32), quant_scale_name)
                )
                graph.initializer.append(
                    numpy_helper.from_array(np.array(quant_zp, dtype=quant_type), quant_zero_point_name)
                )

                # 添加新节点
                new_nodes.extend([quant_node, dequant_node])

    # # 将新节点插入到图中
    graph.node.extend(new_nodes)
    
    # 对图进行拓扑排序
    sorted_nodes = kahn_topological_sort(graph)
    graph.ClearField("node")
    graph.node.extend(sorted_nodes)
    # 量化参数值初始化
    quantize_initializer(graph)
    
    # 验证模型
    onnx.checker.check_model(model)
    # 保存修改后的模型
    onnx.save(model, output_model_path)
    print(f"量化后的模型已保存到: {output_model_path}")

def quantize_initializer(graph):
    """
    根据 ONNX 模型中的 QuantizeLinear 节点信息，对 initializer 数据进行量化。

    Args:
        graph (onnx.GraphProto): ONNX 模型的计算图。
    """
    unused_nodes = []
    # 遍历所有节点，找到 QuantizeLinear 节点
    for node in graph.node:
        if node.op_type == "QuantizeLinear":
            # 获取 QuantizeLinear 的输入
            input_name = node.input[0]  # 浮点输入
            scale_name = node.input[1]  # scale
            zero_point_name = node.input[2]  # zero_point
            output_name = node.output[0]  # 量化后的输出

            # 查找 scale 和 zero_point 的值
            scale = None
            zero_point = None
            for initializer in graph.initializer:
                if initializer.name == scale_name:
                    scale = numpy_helper.to_array(initializer)
                elif initializer.name == zero_point_name:
                    zero_point = numpy_helper.to_array(initializer)

            if scale is None or zero_point is None:
                raise ValueError(f"Missing scale or zero_point for QuantizeLinear node: {node.name}")

            # 查找对应的 initializer
            for initializer in graph.initializer:
                if initializer.name == input_name:
                    # 获取浮点数据
                    float_data = numpy_helper.to_array(initializer)

                    # 执行量化操作
                    quantized_data = np.round(float_data / scale) + zero_point
                    dtype_info = np.iinfo(zero_point.dtype)
                    quantized_data = np.clip(quantized_data, dtype_info.min, dtype_info.max).astype(zero_point.dtype)  # 假设目标类型是 uint8

                    # 更新 initializer 数据
                    new_initializer = numpy_helper.from_array(quantized_data, name=output_name)
                    graph.initializer.remove(initializer)  # 移除原始 initializer
                    graph.initializer.append(new_initializer)  # 添加量化后的 initializer
                    
                    # 更新下一个节点的输入
                    for next_node in graph.node:
                        for i, inp in enumerate(next_node.input):
                            if inp == input_name:
                                next_node.input[i] = output_name
                                break

                    unused_nodes.append(node)
                    break

    #remove_unused_nodes(graph)
    for node in unused_nodes:
        graph.node.remove(node)
                    

def test_mlp_export_onnx_and_qdq():
    
    model = MLP()
    example_x = torch.empty(97, 8, dtype=torch.float32)

    torch.onnx.export(
        model,
        (example_x,),
        "./data.ignore/mlp.onnx",
        input_names=["x", ],
        output_names=["output", ],
        opset_version=17,
        dynamic_axes={
            "x": {0: "batch_size"},
            "output": {0: "batch_size"},
        })
    
    # 插入量化和反量化节点
    insert_quant_dequant_nodes(
        "./data.ignore/mlp.onnx",
        "./data.ignore/mlp_qdq.onnx",
        target_tensors={
            "x": [np.int8, 0.5, 20], 
            "layer0.weight": [np.int8, 0.5, 20], 
            "layer0.bias": [np.int32, 0.25, 20], 
            "/layer0/Gemm_output_0": [np.int8, 2.0, 20]
        }
    )

if __name__ == "__main__":
    test_mlp_export_onnx_and_qdq()