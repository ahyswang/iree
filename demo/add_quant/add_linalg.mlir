
#map = affine_map<(d0) -> (d0)>
module {
  util.func public @main(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>) -> tensor<?xi32> {
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %arg0, %c0 : tensor<?xi32>
    %0 = tensor.empty(%dim) : tensor<?xi32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%arg0, %arg1 : tensor<?xi32>, tensor<?xi32>) outs(%0 : tensor<?xi32>) {
    ^bb0(%in: i32, %in_0: i32, %out: i32):
      %2 = arith.addi %in, %in_0 : i32
      linalg.yield %2 : i32
    } -> tensor<?xi32>
    util.return %1 : tensor<?xi32>
  }
}

