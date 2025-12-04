import tensorflow as tf
import numpy as np
import os

# 设置随机种子以确保可重复性
tf.random.set_seed(42)
np.random.seed(42)

# 1. 定义简单的卷积神经网络模型
def create_simple_cnn():
    model = tf.keras.Sequential([
        tf.keras.layers.InputLayer(input_shape=(1,5),batch_size=1, name='input'),
        
        # tf.keras.layers.Conv2D(32, (3, 3), kernel_initializer=tf.keras.initializers.RandomNormal(mean=1.0, stddev=0.02),bias_initializer=tf.keras.initializers.RandomNormal(mean=2.0, stddev=0.03),activation='relu', padding='same', name='conv1'),
        # tf.keras.layers.Conv2D(64, (3, 3), kernel_initializer=tf.keras.initializers.RandomNormal(mean=1.0, stddev=0.02),bias_initializer=tf.keras.initializers.RandomNormal(mean=2.0, stddev=0.03),activation='relu', padding='same', name='conv2'),
        # tf.keras.layers.GlobalAveragePooling2D(name='gap'),

        tf.keras.layers.Dense(10, name='output'),
        tf.keras.layers.Softmax()
    ])
    
    return model

# 2. 创建并编译模型
model = create_simple_cnn()
model.compile(
    optimizer='adam',
    loss='sparse_categorical_crossentropy',
    metrics=['accuracy']
)

# 打印模型摘要
model.summary()

# 3. 创建代表性数据集生成器（用于校准）
class RepresentativeDataset:
    def __init__(self, input_shape, num_samples=100):
        self.input_shape = input_shape
        self.num_samples = num_samples
        
    def __call__(self):
        for _ in range(self.num_samples):
            # 生成随机数据作为代表性数据集
            data = np.random.rand(*self.input_shape).astype(np.float32)
            # 对于分类任务，也生成随机标签（虽然在校准中不会使用）
            yield [data]

# 4. 定义模型输入形状
input_shape = (1, 5)  # 批大小, 高度, 宽度, 通道数

# 5. 创建转换器并配置INT8量化
converter = tf.lite.TFLiteConverter.from_keras_model(model)

# 设置优化选项
converter.optimizations = [tf.lite.Optimize.DEFAULT]

# 设置代表性数据集用于校准
converter.representative_dataset = RepresentativeDataset(input_shape)

# 确保支持的操作尽可能被量化
converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS_INT8]

# 设置输入输出的数据类型（量化后输入输出通常是float32或int8）
converter.inference_input_type = tf.int8   # 或 tf.float32
converter.inference_output_type = tf.int8  # 或 tf.float32

print("开始INT8量化...")

try:
    # 6. 执行量化并转换为TFLite模型
    tflite_quant_model = converter.convert()
    
    # 7. 保存量化后的模型
    quantized_model_path = "simple_l_quantized.tflite"
    with open(quantized_model_path, 'wb') as f:
        f.write(tflite_quant_model)
    
    print(f"量化模型已保存到: {quantized_model_path}")
    
    # 8. 保存原始FP32模型用于比较
    converter_no_quant = tf.lite.TFLiteConverter.from_keras_model(model)
    tflite_fp32_model = converter_no_quant.convert()
    
    fp32_model_path = "simple_l_fp32.tflite"
    with open(fp32_model_path, 'wb') as f:
        f.write(tflite_fp32_model)
    
    print(f"FP32模型已保存到: {fp32_model_path}")
    
except Exception as e:
    print(f"量化过程中出现错误: {e}")

# 9. 比较模型大小
fp32_size = os.path.getsize(fp32_model_path) / (1024 * 1024)  # MB
quantized_size = os.path.getsize(quantized_model_path) / (1024 * 1024)  # MB

print(f"\n模型大小比较:")
print(f"FP32模型: {fp32_size:.2f} MB")
print(f"INT8量化模型: {quantized_size:.2f} MB")
print(f"压缩比例: {fp32_size/quantized_size:.2f}x")

# 10. 测试量化模型推理
def test_tflite_model(model_path, input_shape, num_tests=100):
    # 加载TFLite模型并分配张量
    interpreter = tf.lite.Interpreter(model_path=model_path)
    interpreter.allocate_tensors()
    
    # 获取输入和输出张量详情
    input_details = interpreter.get_input_details()
    output_details = interpreter.get_output_details()
    
    print(f"\n模型输入详情: {input_details[0]}")
    print(f"模型输出详情: {output_details[0]}")
    
    # 准备测试数据
    if input_details[0]['dtype'] == np.int8:
        # 对于INT8输入，需要量化输入数据
        input_scale, input_zero_point = input_details[0]['quantization']
        test_data = (np.random.rand(*input_shape) / input_scale + input_zero_point)
        test_data = test_data.astype(np.int8)
    else:
        test_data = np.random.rand(*input_shape).astype(np.float32)
    
    # 预热
    for _ in range(10):
        interpreter.set_tensor(input_details[0]['index'], test_data)
        interpreter.invoke()
    
    # 正式测试推理时间
    import time
    start_time = time.time()
    for _ in range(num_tests):
        interpreter.set_tensor(input_details[0]['index'], test_data)
        interpreter.invoke()
        output_data = interpreter.get_tensor(output_details[0]['index'])
    end_time = time.time()
    
    avg_time = (end_time - start_time) / num_tests * 1000  # 毫秒
    
    return avg_time, output_data

exit(0)
 
# 测试两个模型的推理性能
print("\n测试模型推理性能...")
fp32_time, _ = test_tflite_model(fp32_model_path, input_shape)
quant_time, _ = test_tflite_model(quantized_model_path, input_shape)

print(f"\n推理时间比较:")
print(f"FP32模型: {fp32_time:.2f} ms")
print(f"INT8量化模型: {quant_time:.2f} ms")
print(f"速度提升: {fp32_time/quant_time:.2f}x")

# 11. 验证量化模型的功能
def validate_quantization(original_model, tflite_model_path, input_shape):
    """验证量化模型与原始模型输出的一致性"""
    
    # 生成测试输入
    test_input = np.random.rand(*input_shape).astype(np.float32)
    
    # 原始模型预测
    original_output = original_model.predict(test_input, verbose=0)
    
    # TFLite模型预测
    interpreter = tf.lite.Interpreter(model_path=tflite_model_path)
    interpreter.allocate_tensors()
    
    input_details = interpreter.get_input_details()
    output_details = interpreter.get_output_details()
    
    # 准备输入数据（考虑量化参数）
    if input_details[0]['dtype'] == np.int8:
        input_scale, input_zero_point = input_details[0]['quantization']
        quantized_input = (test_input / input_scale + input_zero_point).astype(np.int8)
        interpreter.set_tensor(input_details[0]['index'], quantized_input)
    else:
        interpreter.set_tensor(input_details[0]['index'], test_input)
    
    interpreter.invoke()
    tflite_output = interpreter.get_tensor(output_details[0]['index'])
    
    # 如果输出是量化的，需要反量化
    if output_details[0]['dtype'] == np.int8:
        output_scale, output_zero_point = output_details[0]['quantization']
        tflite_output = (tflite_output.astype(np.float32) - output_zero_point) * output_scale
    
    # 计算输出差异
    output_diff = np.mean(np.abs(original_output - tflite_output))
    print(f"\n量化验证 - 输出平均差异: {output_diff:.6f}")
    
    return output_diff

# 验证量化效果
output_diff = validate_quantization(model, quantized_model_path, input_shape)

# 12. 显示量化统计信息
def print_quantization_info(model_path):
    interpreter = tf.lite.Interpreter(model_path=model_path)
    interpreter.allocate_tensors()
    
    input_details = interpreter.get_input_details()
    output_details = interpreter.get_output_details()
    
    print(f"\n量化信息:")
    print(f"输入数据类型: {input_details[0]['dtype']}")
    print(f"输出数据类型: {output_details[0]['dtype']}")
    
    if input_details[0]['quantization'] != ():
        input_scale, input_zero_point = input_details[0]['quantization']
        print(f"输入量化参数 - 尺度: {input_scale}, 零点: {input_zero_point}")
    
    if output_details[0]['quantization'] != ():
        output_scale, output_zero_point = output_details[0]['quantization']
        print(f"输出量化参数 - 尺度: {output_scale}, 零点: {output_zero_point}")

print_quantization_info(quantized_model_path)

print("\nINT8静态量化完成！")