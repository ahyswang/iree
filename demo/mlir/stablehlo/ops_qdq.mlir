
// ../../../build/tools/iree-opt --iree-stablehlo-to-iree-input ./ops.mlir 

func.func @test_abs_quant(%arg0: tensor<2x3x!quant.uniform<u8:f32, 1.0:0>>) -> tensor<2x3x!quant.uniform<u8:f32, 1.0:0>>
{
    %abs = "stablehlo.abs"(%arg0) : (tensor<2x3x!quant.uniform<u8:f32, 1.0:0>>) -> tensor<2x3x!quant.uniform<u8:f32, 1.0:0>>
    return %abs: tensor<2x3x!quant.uniform<u8:f32, 1.0:0>>
}


func.func @add(%arg0: tensor<16x16x!quant.uniform<u8:f32, 3.400000e+01:16>>) -> tensor<16x16x!quant.uniform<u8:f32, 3.400000e+01:16>> {
  //%0 = stablehlo.uniform_dequantize %arg0 : (tensor<16x16x!quant.uniform<u8:f32, 3.400000e+01:16>>) -> tensor<16x16xf32>
  //%1 = stablehlo.abs %0 : tensor<16x16xf32>
  %2 = stablehlo.abs %arg0 : tensor<16x16x!quant.uniform<u8:f32, 3.400000e+01:16>>
  //%3 = stablehlo.uniform_quantize %1 : (tensor<16x16xf32>) -> tensor<16x16x!quant.uniform<u8:f32, 3.400000e+01:16>>
  return %2 : tensor<16x16x!quant.uniform<u8:f32, 3.400000e+01:16>>
}