#map = affine_map<(d0) -> (d0)>

module attributes {} {
    func.func @main(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>) -> tensor<10xi32> {
        %out = tensor.empty() : tensor<10xi32>
        //%0 = linalg.add {iree.tensor.trace = "key"}  ins(%arg0, %arg1 : tensor<10xi32>, tensor<10xi32>) outs(%out : tensor<10xi32>) -> tensor<10xi32>
        %3 = linalg.generic {iree.tensor.trace = "key", indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%arg0, %arg1 : tensor<10xi32>, tensor<10xi32>) outs(%out : tensor<10xi32>) {
        ^bb0(%in: i32, %in_0: i32, %o: i32):
            %5 = arith.addi %in, %in_0 : i32
            linalg.yield %5 : i32
        } -> tensor<10xi32>
        
        return %3 : tensor<10xi32>
    }
 }