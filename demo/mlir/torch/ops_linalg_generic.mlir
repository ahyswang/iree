func.func @gemm_1(%arg0: tensor<3x5xf32>, %arg1: tensor<5x4xf32>, %arg2: tensor<1x4xf32>) -> tensor<3x4xf32> {
  %cst = arith.constant 0.000000e+00 : f32
  %3 = tensor.empty() : tensor<3x4xf32>
  %4 = linalg.fill ins(%cst : f32) outs(%3 : tensor<3x4xf32>) -> tensor<3x4xf32>
  %5 = linalg.matmul ins(%arg0, %arg1 : tensor<3x5xf32>, tensor<5x4xf32>) outs(%4 : tensor<3x4xf32>) -> tensor<3x4xf32>
  %6 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%5, %arg2 : tensor<3x4xf32>, tensor<1x4xf32>) outs(%3 : tensor<3x4xf32>) {
  ^bb0(%in: f32, %in_0: f32, %out: f32):
    %9 = arith.addf %in, %in_0 : f32
    linalg.yield %9 : f32
  } -> tensor<3x4xf32>
  return %6 : tensor<3x4xf32>
}

func.func public @conv_1(%0: tensor<1x1x7x5xf32>, %1: tensor<1x1x3x3xf32>) -> tensor<1x1x3x2xf32>  {
    %cst = arith.constant 0.000000e+00 : f32
    %2 = tensor.empty() : tensor<1x1x3x2xf32>
    %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<1x1x3x2xf32>) -> tensor<1x1x3x2xf32>
    %4 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%0, %1 : tensor<1x1x7x5xf32>, tensor<1x1x3x3xf32>) outs(%3 : tensor<1x1x3x2xf32>) -> tensor<1x1x3x2xf32>
    func.return %4 : tensor<1x1x3x2xf32>
}