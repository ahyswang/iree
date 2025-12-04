import torch
import torch.nn as nn
import torch.nn.functional as F
import onnx
import onnxruntime as ort
import numpy as np
from onnxruntime.quantization import quantize_static, CalibrationDataReader, QuantType, QuantFormat

# 1. 定义简单的卷积神经网络
class SimpleCNN(nn.Module):
    def __init__(self):
        super(SimpleCNN, self).__init__()
        # self.conv1 = nn.Conv2d(3, 32, kernel_size=3, padding=1)
        # self.conv2 = nn.Conv2d(32, 64, kernel_size=3, padding=1)
        # self.pool = nn.AdaptiveAvgPool2d((1, 1))
        # self.fc = nn.Linear(64, num_classes,bias=False)
        
    def forward(self, x,y):
        # x = F.relu(self.conv1(x))
        # x = F.relu(self.conv2(x))
        # x = self.pool(x)
        # x = x.view(x.size(0), -1)
        # x = self.fc(x)
        x=F.softmax(x,dim=-1)
        x=x+x
        z=torch.matmul(x,y)
        return z

# 2. 创建模型实例并设置为评估模式
model = SimpleCNN()
model.eval()

# 3. 创建虚拟输入张量
dummy_input = (torch.randn(16,32),torch.randn(32,48))

# 4. 导出为ONNX模型（opset_version=17）
onnx_model_path = "mat8.onnx"
torch.onnx.export(
    model,
    dummy_input,
    onnx_model_path,
    export_params=True,
    opset_version=17,
    input_names=['input1','input2'],
    output_names=['output']
    # dynamic_axes={
    #     'input': {0: 'batch_size'},
    #     'output': {0: 'batch_size'}
    # }
)

print(f"ONNX模型已导出到: {onnx_model_path}")

# 5. 验证导出的ONNX模型
onnx_model = onnx.load(onnx_model_path)
onnx.checker.check_model(onnx_model)
print("ONNX模型验证成功!")

# 6. 创建校准数据读取器（使用随机数据）
class RandomDataReader(CalibrationDataReader):
    def __init__(self, input_shape1,input_shape2, num_samples=100):
        self.input_shape1 = input_shape1
        self.input_shape2 = input_shape2
        self.num_samples = num_samples
        self.samples_generated = 0
        
    def get_next(self):
        if self.samples_generated < self.num_samples:
            self.samples_generated += 1
            # return {'input': np.random.rand(*self.input_shape).astype(np.float32)}
            return {'input1': np.random.rand(*self.input_shape1).astype(np.float32),
                    'input2':np.random.rand(*self.input_shape2).astype(np.float32)}
        else:
            return None
            
    def rewind(self):
        self.samples_generated = 0

# 7. 配置量化参数
quantized_model_path = "mat8_quantized.onnx"

# 8. 执行静态量化
# from IPython import embed;embed()
try:
    quantize_static(
        model_input=onnx_model_path,
        model_output=quantized_model_path,
        calibration_data_reader=RandomDataReader(input_shape1=(16,32),input_shape2=(32,48), num_samples=100),
        # ----------- 2选1 ----------- #
        # quant_format=QuantFormat.QOperator,  # 用qop方式量化
        quant_format=QuantFormat.QDQ,  # 用qdq方式量化

        activation_type=QuantType.QInt8,
        weight_type=QuantType.QInt8,
        nodes_to_exclude=['/Softmax'],
        # per_channel=True
        # optimize_model=False
    )
    print(f"量化模型已保存到: {quantized_model_path}")
    
    # 9. 验证量化模型
    quantized_model = onnx.load(quantized_model_path)
    onnx.checker.check_model(quantized_model)
    print("量化模型验证成功!")
    
except Exception as e:
    print(f"量化过程中出现错误: {e}")

# 10. 比较原始模型和量化模型的大小
import os
original_size = os.path.getsize(onnx_model_path) / (1024 * 1024)  # MB
quantized_size = os.path.getsize(quantized_model_path) / (1024 * 1024)  # MB

print(f"\n模型大小比较:")
print(f"原始模型: {original_size:.2f} MB")
print(f"量化模型: {quantized_size:.2f} MB")
print(f"压缩比例: {original_size/quantized_size:.2f}x")

# 11. 测试推理性能
def test_inference_time(model_path, input_data):
    session = ort.InferenceSession(model_path)
    input_name = session.get_inputs()[0].name
    
    # 预热
    for _ in range(10):
        session.run(None, {input_name: input_data})
    
    # 正式测试
    import time
    start_time = time.time()
    for _ in range(100):
        session.run(None, {input_name: input_data})
    end_time = time.time()
    
    return (end_time - start_time) / 100 * 1000  # 毫秒

# 测试数据
test_input = np.random.rand(16,32).astype(np.float32)

# 测试推理时间
original_time = test_inference_time(onnx_model_path, test_input)
quantized_time = test_inference_time(quantized_model_path, test_input)

print(f"\n推理时间比较:")
print(f"原始模型: {original_time:.2f} ms")
print(f"量化模型: {quantized_time:.2f} ms")
print(f"速度提升: {original_time/quantized_time:.2f}x")
