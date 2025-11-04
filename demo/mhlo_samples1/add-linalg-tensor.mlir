 #map = affine_map<(d0) -> (d0)>
 module attributes {tf.versions = {bad_consumers = [], min_consumer = 0 : i32, producer = 27 : i32}} {
   func.func @main(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>) -> tensor<10xi32> attributes {tf.entry_function = {control_outputs = "", inputs = "input0,input1", outputs = "Add"}} {
     %0 = tensor.empty() : tensor<10xi32>
     %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%arg0, %arg1 : tensor<10xi32>, tensor<10xi32>) outs(%0 : tensor<10xi32>) {
     ^bb0(%in: i32, %in_0: i32, %out: i32):
       %2 = arith.addi %in, %in_0 : i32
       linalg.yield %2 : i32
     } -> tensor<10xi32>
     return %1 : tensor<10xi32>
   }
 }