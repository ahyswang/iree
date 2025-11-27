
import numpy as np
import torch
import torch.nn as nn
import unittest
import logging
import onnx
from onnx import helper, numpy_helper
import numpy as np
# from onnx import optimizer
from onnxscript import ir

class MLP(nn.Module):
    """
    Multi-Layer Perceptron (MLP) model class.
    Defines a neural network with four linear layers and sigmoid activations.
    """

    def __init__(self) -> object:
        super().__init__()
        # Define model layers
        self.layer0 = nn.Linear(8, 8, bias=True)
        self.layer1 = nn.Linear(8, 4, bias=True)
        self.layer2 = nn.Linear(4, 2, bias=True)
        self.layer3 = nn.Linear(2, 2, bias=True)

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
                    numpy_helper.from_array(np.array(scale, dtype=np.float32), quant_scale_name)
                )
                graph.initializer.append(
                    numpy_helper.from_array(np.array(zero_point, dtype=np.uint8), quant_zero_point_name)
                )

                # 添加新节点
                new_nodes.extend([quant_node, dequant_node])

    # # 将新节点插入到图中
    graph.node.extend(new_nodes)
    # 对图进行拓扑排序
    sorted_nodes = kahn_topological_sort(graph)
    graph.ClearField("node")
    graph.node.extend(sorted_nodes)
    # 验证模型
    onnx.checker.check_model(model)
    # 保存修改后的模型
    onnx.save(model, output_model_path)
    print(f"量化后的模型已保存到: {output_model_path}")

class ModelTest(unittest.TestCase):
    def test_mlp_export_onnx(self) -> None:
        
        model = MLP()
        example_x = torch.empty(97, 8, dtype=torch.float32)

        torch.onnx.export(
            model,
            (example_x,),
            "./data.ignore/mlp.onnx",
            input_names=["x", ],
            output_names=["output", ],
            opset_version=13)

    def test_mlp_export_onnx_and_qdq(self) -> None:
        
        model = MLP()
        example_x = torch.empty(97, 8, dtype=torch.float32)

        torch.onnx.export(
            model,
            (example_x,),
            "./data.ignore/mlp.onnx",
            input_names=["x", ],
            output_names=["output", ],
            opset_version=17)
        
        # 插入量化和反量化节点
        insert_quant_dequant_nodes(
            "./data.ignore/mlp.onnx",
            "./data.ignore/mlp_qdq.onnx",
            target_tensors=["x", "layer0.weight", "layer0.bias", "/layer0/Gemm_output_0"]
        )

if __name__ == "__main__":
    logging.basicConfig(level=logging.DEBUG)
    # Run unit tests
    unittest.main()