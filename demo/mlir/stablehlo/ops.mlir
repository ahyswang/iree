
// ../../build/tools/iree-opt --iree-stablehlo-to-iree-input ./ops.mlir 

func.func @test_add() -> tensor<2x3xf32>
{
    %a = stablehlo.constant dense<[[1.0, 2.0, 3.0],
                               [4.0, 5.0, 6.0]]> : tensor<2x3xf32>
    %b = stablehlo.constant dense<[[10.0, 20.0, 30.0],[10.0, 20.0, 30.0]]> : tensor<2x3xf32>
    %result = stablehlo.add %a, %b : tensor<2x3xf32>
    return %result:tensor<2x3xf32>
}

func.func @test_add_broadcast() -> tensor<2x3xf32>
{
    %a = stablehlo.constant dense<[[1.0, 2.0, 3.0],
                               [4.0, 5.0, 6.0]]> : tensor<2x3xf32>
    %b = stablehlo.constant dense<[10.0, 20.0, 30.0]> : tensor<3xf32>
    %b1 = "stablehlo.broadcast"(%b) {broadcast_sizes = array<i64: 2>} : (tensor<3xf32>) -> tensor<2x3xf32>
    %result = stablehlo.add %a, %b1 : tensor<2x3xf32>
    return %result:tensor<2x3xf32>
}

func.func @test_abs(%argv0: tensor<2x3xf32>) -> tensor<2x3xf32>
{
    %result = stablehlo.abs %argv0 : tensor<2x3xf32>
    return %result: tensor<2x3xf32>
}