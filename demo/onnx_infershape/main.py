import onnx
from onnx import helper, TensorProto

# 构造包含自定义算子的简单图
node = helper.make_node(
    "MyAddScale",                  # 你的自定义算子名
    inputs=["X", "scale"],
    outputs=["Y"],
    domain="com.example"
)
graph = helper.make_graph(
    [node],
    "custom_op_graph",
    inputs=[
        helper.make_tensor_value_info("X", TensorProto.FLOAT, [3, 5]),
        helper.make_tensor_value_info("scale", TensorProto.FLOAT, [])
    ],
    outputs=[
        #helper.make_tensor_value_info("Y", TensorProto.FLOAT, [1, 1])
        #helper.make_tensor_value_info("Y", TensorProto.FLOAT, [])
    ]
)
model = helper.make_model(graph, opset_imports=[helper.make_opsetid("com.example", 1)])
onnx.save(model, "test_myaddscale.onnx")

# 尝试加载
try:
    m = onnx.load("test_myaddscale.onnx.ignore")
    print("模型加载成功，包含自定义算子！")
    onnx.checker.check_model(m, full_check=True)
    print("模型检查成功，包含自定义算子！")
    inferred_model = onnx.shape_inference.infer_shapes(m)
    onnx.save_model(inferred_model, "test_myaddscale_inferred.onnx.ignore")
    print("模型推形状成功，包含自定义算子！")
except Exception as e:
    print("加载失败: ", e)