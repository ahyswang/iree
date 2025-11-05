!quant_type = !quant.uniform<i32:f32, 1.0:0>
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

    %result1 = quant.scast %1 : tensor<?xi32> to tensor<?x!quant.uniform<i32:f32, 1.0:0>>
    %result2 = quant.dcast %result1 : tensor<?x!quant.uniform<i32:f32, 1.0:0>> to tensor<?xf32>
    %result3 = quant.qcast %result2 : tensor<?xf32> to tensor<?x!quant.uniform<i32:f32, 1.0:0>>  
    %result4 = quant.scast %result3 : tensor<?x!quant.uniform<i32:f32, 1.0:0>> to tensor<?xi32>

    util.return %result4 : tensor<?xi32>
  }
}

