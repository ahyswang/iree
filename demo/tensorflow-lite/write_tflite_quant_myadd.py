import flatbuffers
import flatbuffers.flexbuffers as flexbuffers
import numpy as np


import sys 
sys.path.append('./') 
# 导入所有需要的 tflite 生成模块
from tflite import Model, SubGraph, Tensor, Operator, OperatorCode, Buffer
from tflite import AddOptions, BuiltinOptions
from tflite import TensorType, BuiltinOperator
from tflite import QuantizationParameters

from tflite.TensorType import *
from tflite.BuiltinOperator import *
from tflite.BuiltinOptions import *

def create_add_model(output_path):
    """
    创建一个包含单个 ADD 算子的 TFLite 模型文件。
    模型结构: output = input_1 + constant_input
    """
    builder = flatbuffers.Builder(2048)

    # --- 1. 创建 Buffers ---
    # TFLite 模型中的第一个 buffer 必须是空的，作为默认值。
    # 第二个 buffer 将包含我们常量张量的数据。
    
    # 创建常量数据
    constant_data = np.array([1.0, 1.0, 1.0, 1.0], dtype=np.int8)
    
    # 将常量数据打包到 FlatBuffers buffer 中
    # 注意：必须从内到外构建，所以先创建 buffer 的 data vector
    buffer2_data = builder.CreateByteVector(constant_data.tobytes())
    
    # 创建 Buffer 对象
    Buffer.Start(builder)
    Buffer.AddData(builder, buffer2_data)
    buffer2 = Buffer.End(builder)

    # 创建空的 Buffer 对象
    Buffer.Start(builder)
    buffer1 = Buffer.End(builder)


    # --- 2. 创建 Tensors ---
    # 我们需要3个张量：input_1, constant_input, output
    # 它们的索引将是 0, 1, 2
    input0_name = builder.CreateString(b"input_0")
    input1_name = builder.CreateString(b"input_1")
    output_name = builder.CreateString(b"output")

    # 创建张量的 shape vector
    shape_vector = builder.CreateNumpyVector(np.array([1, 2, 2, 1], dtype=np.int32))

    # 创建量化参数对象
    scale_vec = builder.CreateNumpyVector(np.array([0.1], dtype=np.float32))
    zero_point_vec = builder.CreateNumpyVector(np.array([0], dtype=np.int8))

    QuantizationParameters.Start(builder)
    QuantizationParameters.AddScale(builder, scale_vec)
    QuantizationParameters.AddZeroPoint(builder, zero_point_vec)
    quant_params = QuantizationParameters.End(builder)


    # Tensor 0: input_1 (动态输入)
    Tensor.Start(builder)
    Tensor.AddShape(builder, shape_vector)
    Tensor.AddType(builder, TensorType.INT8)
    Tensor.AddBuffer(builder, 0) # 指向空的 buffer
    Tensor.AddName(builder, input0_name)
    Tensor.AddQuantization(builder, quant_params)
    tensor0 = Tensor.End(builder)

    # Tensor 1: constant_input (常量)
    Tensor.Start(builder)
    Tensor.AddShape(builder, shape_vector)
    Tensor.AddType(builder, TensorType.INT8)
    Tensor.AddBuffer(builder, 1) # 指向包含数据的 buffer
    Tensor.AddName(builder, input1_name)
    Tensor.AddQuantization(builder, quant_params)
    tensor1 = Tensor.End(builder)

    # Tensor 2: output
    Tensor.Start(builder)
    Tensor.AddShape(builder, shape_vector)
    Tensor.AddType(builder, TensorType.INT8)
    Tensor.AddBuffer(builder, 0) # 输出也指向空 buffer
    Tensor.AddName(builder, output_name)
    Tensor.AddQuantization(builder, quant_params)
    tensor2 = Tensor.End(builder)


    # --- 3. 创建 OperatorCode ---
    # 我们需要一个自定义算子 "MyAdd" 的 OperatorCode
    myadd_str = builder.CreateString(b"MyAdd")

    OperatorCode.Start(builder)
    OperatorCode.AddBuiltinCode(builder, BuiltinOperator.CUSTOM)  # 使用自定义算子
    OperatorCode.AddCustomCode(builder, myadd_str)  # 使用自定义算子名称
    myadd_op_code = OperatorCode.End(builder)


    # --- 4. 创建 Operator ---
    # 创建 MyAdd 算子本身
    
    # 定义算子的输入张量索引
    op_inputs = builder.CreateNumpyVector(np.array([0, 1], dtype=np.int32)) # (input_1, constant_input)
    # 定义算子的输出张量索引
    op_outputs = builder.CreateNumpyVector(np.array([2], dtype=np.int32)) # (output)

    # # 自定义算子没有内置选项 (BuiltinOptions)
    # # 如果需要，可以创建自定义选项 (CustomOptions)
    # # 这里我们创建一个空的自定义选项
    # Operator.StartCustomOptionsVector(builder, 0)
    # custom_options_vec = builder.EndVector()

    # --- 2. 创建自定义属性 (使用 FlexBuffers) ---
    # 我们将添加 {"my_attr_str": "hello", "my_attr_int": 123}
    flex_builder = flexbuffers.Builder()
    with flex_builder.Map():
        flex_builder.String("my_attr_str", "hello")
        flex_builder.Int("my_attr_int", 123)
    custom_options_bytes = flex_builder.Finish()
    # --- 3. 将 FlexBuffers 数据打包到主 builder 中 ---
    custom_options_vec = builder.CreateByteVector(custom_options_bytes)

    # 创建 Operator
    Operator.Start(builder)
    Operator.AddOpcodeIndex(builder, 0) # 指向我们创建的 MyAdd OperatorCode
    Operator.AddInputs(builder, op_inputs)
    Operator.AddOutputs(builder, op_outputs)
    # 对于自定义算子，不设置 BuiltinOptions
    Operator.AddCustomOptions(builder, custom_options_vec)
    Operator.AddCustomOptionsFormat(builder, 0) # 0 for FLEXBUFFERS
    add_op = Operator.End(builder)


    # --- 5. 创建 SubGraph ---
    # 将 Tensors 和 Operators 组合到 SubGraph 中
    
    # 创建 Tensors 向量
    SubGraph.StartTensorsVector(builder, 3)
    builder.PrependUOffsetTRelative(tensor2)
    builder.PrependUOffsetTRelative(tensor1)
    builder.PrependUOffsetTRelative(tensor0)
    tensors_vec = builder.EndVector()

    # 创建 Operators 向量
    SubGraph.StartOperatorsVector(builder, 1)
    builder.PrependUOffsetTRelative(add_op)
    operators_vec = builder.EndVector()

    # 定义 Subgraph 的输入和输出
    subgraph_inputs = builder.CreateNumpyVector(np.array([0], dtype=np.int32)) # input_1 是 subgraph 的输入
    subgraph_outputs = builder.CreateNumpyVector(np.array([2], dtype=np.int32)) # output 是 subgraph 的输出

    # 创建 SubGraph
    SubGraph.Start(builder)
    SubGraph.AddTensors(builder, tensors_vec)
    SubGraph.AddInputs(builder, subgraph_inputs)
    SubGraph.AddOutputs(builder, subgraph_outputs)
    SubGraph.AddOperators(builder, operators_vec)
    main_subgraph = SubGraph.End(builder)


    # --- 6. 创建 Model ---
    # 这是顶层对象
    
    # 创建 OperatorCodes 向量
    Model.StartOperatorCodesVector(builder, 1)
    builder.PrependUOffsetTRelative(myadd_op_code)
    operator_codes_vec = builder.EndVector()

    # 创建 SubGraphs 向量
    Model.StartSubgraphsVector(builder, 1)
    builder.PrependUOffsetTRelative(main_subgraph)
    subgraphs_vec = builder.EndVector()

    # 创建 Buffers 向量
    Model.StartBuffersVector(builder, 2)
    builder.PrependUOffsetTRelative(buffer2)
    builder.PrependUOffsetTRelative(buffer1)
    buffers_vec = builder.EndVector()

    # 创建 Model
    Model.Start(builder)
    Model.AddVersion(builder, 3)
    Model.AddOperatorCodes(builder, operator_codes_vec)
    Model.AddSubgraphs(builder, subgraphs_vec)
    Model.AddBuffers(builder, buffers_vec)
    model = Model.End(builder)

    # --- 7. 完成构建并写入文件 ---
    builder.Finish(model, file_identifier=b'TFL3')

    with open(output_path, 'wb') as f:
        f.write(builder.Output())

    print(f"ADD model saved to {output_path}")

if __name__ == '__main__':
    create_add_model("add_model.tflite")