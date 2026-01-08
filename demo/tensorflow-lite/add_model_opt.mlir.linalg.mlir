module {
  util.func public @main(%arg0: tensor<1x2x2x1xi8> {ml_program.identifier = "input_0"}) -> (tensor<1x2x2x1xi8> {ml_program.identifier = "output"}) {
    %cst = arith.constant dense<1> : tensor<1x2x2x1xi8>
    %0 = tensor.empty() : tensor<1x2x2x1xi8>
    %1 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0, %cst : tensor<1x2x2x1xi8>, tensor<1x2x2x1xi8>) outs(%0 : tensor<1x2x2x1xi8>) {
    ^bb0(%in: i8, %in_0: i8, %out: i8):
      %2 = arith.addi %in, %in_0 : i8
      linalg.yield %2 : i8
    } -> tensor<1x2x2x1xi8>
    util.return %1 : tensor<1x2x2x1xi8>
  }
}