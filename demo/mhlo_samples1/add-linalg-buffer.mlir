#map = affine_map<(d0) -> (d0)>
module attributes {tf.versions = {bad_consumers = [], min_consumer = 0 : i32, producer = 27 : i32}} {
  func.func @main(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>) -> tensor<10xi32> attributes {tf.entry_function = {control_outputs = "", inputs = "input0,input1", outputs = "Add"}} {
    %0 = bufferization.to_buffer %arg1 : tensor<10xi32> to memref<10xi32, strided<[?], offset: ?>>
    %1 = bufferization.to_buffer %arg0 : tensor<10xi32> to memref<10xi32, strided<[?], offset: ?>>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<10xi32>
    linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%1, %0 : memref<10xi32, strided<[?], offset: ?>>, memref<10xi32, strided<[?], offset: ?>>) outs(%alloc : memref<10xi32>) {
    ^bb0(%in: i32, %in_0: i32, %out: i32):
      %3 = arith.addi %in, %in_0 : i32
      linalg.yield %3 : i32
    }
    %2 = bufferization.to_tensor %alloc : memref<10xi32> to tensor<10xi32>
    return %2 : tensor<10xi32>
  }
}

