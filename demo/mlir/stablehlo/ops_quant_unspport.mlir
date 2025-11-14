// ../../../build/tools/iree-opt --iree-stablehlo-to-iree-input ./ops.mlir 

func.func @test_abs_quant(%arg0: tensor<2x3x!quant.uniform<u8:f32, 1.0:0>>) -> tensor<2x3x!quant.uniform<u8:f32, 1.0:0>>
{
    %abs = "stablehlo.abs"(%arg0) : (tensor<2x3x!quant.uniform<u8:f32, 1.0:0>>) -> tensor<2x3x!quant.uniform<u8:f32, 1.0:0>>
    return %abs: tensor<2x3x!quant.uniform<u8:f32, 1.0:0>>
}