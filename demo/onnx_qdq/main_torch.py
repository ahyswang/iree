import torch
import torch.nn as nn

class QuantizedMatMul(nn.Module):
    def __init__(self):
        super().__init__()
        self.scale = 0.5
        self.zero_point = -128

    def forward(self, x, y):
        x_q = torch.quantize_per_tensor(x, self.scale, self.zero_point, torch.qint8)
        y_q = torch.quantize_per_tensor(y, self.scale, self.zero_point, torch.qint8)
        z = torch.matmul(x_q.dequantize(), y_q.dequantize())
        z_q = torch.quantize_per_tensor(z, self.scale, self.zero_point, torch.qint8)
        z_d = torch.dequantize(z_q)
        return z_d
    

class QuantLinear(nn.Module):
    def __init__(self):
        super().__init__()
        self.scale = 0.5
        self.zero_point = -128
        self.fc0 = nn.Linear(8, 8, bias=True)

    def forward(self, x):
        x_q = torch.quantize_per_tensor(x, self.scale, self.zero_point, torch.qint8)
        weight_q = torch.quantize_per_tensor(self.fc0.weight, self.scale, self.zero_point, torch.qint8)
        bias_q = torch.quantize_per_tensor(self.fc0.bias, self.scale, self.zero_point, torch.qint32)
        #z = torch.matmul(x_q.dequantize(), weight_q.dequantize()) + bias_q.dequantize()
        z = torch.nn.functional.linear(x_q.dequantize(), weight_q.dequantize(), bias_q.dequantize())
        z_q = torch.quantize_per_tensor(z, self.scale, self.zero_point, torch.qint8)
        z_d = torch.dequantize(z_q)
        return z_d
    
class QuantLinearPerChannel(nn.Module):
    def __init__(self):
        super().__init__()
        self.scale = 0.5
        self.zero_point = -128
        self.scale_perchannel = torch.randint(1, 5, (8,)).float() * 0.1  # 每个输出通道一个scale
        self.zero_point_perchanel = torch.randint(-128, 127, (8,)).long()  # 每个输出通道一个zero_point
        self.fc0 = nn.Linear(8, 8, bias=True)

    def forward(self, x):
        x_q = torch.quantize_per_tensor(x, self.scale, self.zero_point, torch.qint8)
        weight_q = torch.quantize_per_channel(self.fc0.weight, self.scale_perchannel, self.zero_point_perchanel, 0, torch.qint8)
        bias_q = torch.quantize_per_tensor(self.fc0.bias, self.scale, self.zero_point, torch.qint32)
        #z = torch.matmul(x_q.dequantize(), weight_q.dequantize()) + bias_q.dequantize()
        z = torch.nn.functional.linear(x_q.dequantize(), weight_q.dequantize(), bias_q.dequantize())
        z_q = torch.quantize_per_tensor(z, self.scale, self.zero_point, torch.qint8)
        z_d = torch.dequantize(z_q)
        return z_d

def test_quant_matmul():
    # 示例输入
    x = torch.randn(4, 4)
    y = torch.randn(4, 4)

    # 导出 ONNX
    model = QuantizedMatMul()
    torch.onnx.export(model, (x, y), "./data.ignore/mlp_qdq.onnx", opset_version=13)


def test_quant_linear():
    model = QuantLinear()
    x = torch.randn(4, 8)
    y = model(x)
    print(y)
    torch.onnx.export(model, x, "./data.ignore/mlp_qdq.onnx", opset_version=13)


def test_quant_linear_perchannel():
    """
    TODO:Exporting the operator 'aten::quantize_per_channel' to ONNX opset version 21 is not supported
    """
    model = QuantLinearPerChannel()
    x = torch.randn(4, 8)
    y = model(x)
    print(y)
    torch.onnx.export(model, x, "./data.ignore/mlp_qdq.onnx", opset_version=21)

if __name__ == "__main__":
    #test_quant_matmul()
    #test_quant_linear()
    test_quant_linear_perchannel()