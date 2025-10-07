builtin.module @calls attributes {
  
} {

util.func private @matmul_test.generate_random_matrix(%device: !hal.device, %dim0: i64, %dim1: i64, %element_type: i32, %seed: i32) -> !hal.buffer_view
util.func private @matmul_test.check_matmul_results(%device: !hal.device, %m: i64, %k: i64, %n: i64, %transpose_rhs: i32, %lhs: !hal.buffer_view, %rhs: !hal.buffer_view, %acc: !hal.buffer_view, %actual_result: !hal.buffer_view)

util.func private @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_457x330xi8_times_330x512xi8_into_457x512xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_438x331xi8_times_331x513xi8_into_438x513xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_540x332xi8_times_332x516xi8_into_540x516xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_1000x4xi8_times_4x512xi8_into_1000x512xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_4x1000xi8_times_1000x512xi8_into_4x512xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_512x1000xi8_times_1000x4xi8_into_512x4xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_513x128xi8_times_128x55xi8_into_513x55xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_7x160xi8_times_160x31xi8_into_7x31xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_512x330xi8_times_330x33xi8_into_512x33xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_accumulate_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view, %acc: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_accumulate_1x1000xi8_times_1000x1000xi8_into_1x1000xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view, %acc: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_accumulate_1000x1000xi8_times_1000x1xi8_into_1000x1xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view, %acc: !hal.buffer_view) -> !hal.buffer_view
util.func private @module.matmul_1000x1000xi8_times_1000x1xi8_into_1000x1xi32(%lhs: !hal.buffer_view, %rhs: !hal.buffer_view) -> !hal.buffer_view

util.func @matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_457_330_512_0() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 457x330x512"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 457 : i64
  %lhs_dim1 = arith.constant 330 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 2 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 330 : i64
  %rhs_dim1 = arith.constant 512 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 3 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 457 : i64
  %k = arith.constant 330 : i64
  %n = arith.constant 512 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_457x330xi8_times_330x512xi8_into_457x512xi32_457_330_512_1() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 457x330x512"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 457 : i64
  %lhs_dim1 = arith.constant 330 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 4 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 330 : i64
  %rhs_dim1 = arith.constant 512 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 5 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_457x330xi8_times_330x512xi8_into_457x512xi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 457 : i64
  %k = arith.constant 330 : i64
  %n = arith.constant 512 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_438_331_513_2() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 438x331x513"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 438 : i64
  %lhs_dim1 = arith.constant 331 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 6 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 331 : i64
  %rhs_dim1 = arith.constant 513 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 7 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 438 : i64
  %k = arith.constant 331 : i64
  %n = arith.constant 513 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_438x331xi8_times_331x513xi8_into_438x513xi32_438_331_513_3() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 438x331x513"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 438 : i64
  %lhs_dim1 = arith.constant 331 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 8 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 331 : i64
  %rhs_dim1 = arith.constant 513 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 9 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_438x331xi8_times_331x513xi8_into_438x513xi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 438 : i64
  %k = arith.constant 331 : i64
  %n = arith.constant 513 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_540_332_516_4() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 540x332x516"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 540 : i64
  %lhs_dim1 = arith.constant 332 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 10 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 332 : i64
  %rhs_dim1 = arith.constant 516 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 11 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 540 : i64
  %k = arith.constant 332 : i64
  %n = arith.constant 516 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_540x332xi8_times_332x516xi8_into_540x516xi32_540_332_516_5() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 540x332x516"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 540 : i64
  %lhs_dim1 = arith.constant 332 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 12 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 332 : i64
  %rhs_dim1 = arith.constant 516 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 13 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_540x332xi8_times_332x516xi8_into_540x516xi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 540 : i64
  %k = arith.constant 332 : i64
  %n = arith.constant 516 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_1000_4_512_6() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 1000x4x512"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 1000 : i64
  %lhs_dim1 = arith.constant 4 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 14 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 4 : i64
  %rhs_dim1 = arith.constant 512 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 15 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 1000 : i64
  %k = arith.constant 4 : i64
  %n = arith.constant 512 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_1000x4xi8_times_4x512xi8_into_1000x512xi32_1000_4_512_7() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 1000x4x512"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 1000 : i64
  %lhs_dim1 = arith.constant 4 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 16 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 4 : i64
  %rhs_dim1 = arith.constant 512 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 17 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_1000x4xi8_times_4x512xi8_into_1000x512xi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 1000 : i64
  %k = arith.constant 4 : i64
  %n = arith.constant 512 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_4_1000_512_8() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 4x1000x512"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 4 : i64
  %lhs_dim1 = arith.constant 1000 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 18 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 1000 : i64
  %rhs_dim1 = arith.constant 512 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 19 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 4 : i64
  %k = arith.constant 1000 : i64
  %n = arith.constant 512 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_4x1000xi8_times_1000x512xi8_into_4x512xi32_4_1000_512_9() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 4x1000x512"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 4 : i64
  %lhs_dim1 = arith.constant 1000 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 20 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 1000 : i64
  %rhs_dim1 = arith.constant 512 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 21 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_4x1000xi8_times_1000x512xi8_into_4x512xi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 4 : i64
  %k = arith.constant 1000 : i64
  %n = arith.constant 512 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_512_1000_4_10() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 512x1000x4"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 512 : i64
  %lhs_dim1 = arith.constant 1000 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 22 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 1000 : i64
  %rhs_dim1 = arith.constant 4 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 23 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 512 : i64
  %k = arith.constant 1000 : i64
  %n = arith.constant 4 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_512x1000xi8_times_1000x4xi8_into_512x4xi32_512_1000_4_11() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 512x1000x4"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 512 : i64
  %lhs_dim1 = arith.constant 1000 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 24 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 1000 : i64
  %rhs_dim1 = arith.constant 4 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 25 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_512x1000xi8_times_1000x4xi8_into_512x4xi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 512 : i64
  %k = arith.constant 1000 : i64
  %n = arith.constant 4 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_513_128_55_12() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 513x128x55"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 513 : i64
  %lhs_dim1 = arith.constant 128 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 26 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 128 : i64
  %rhs_dim1 = arith.constant 55 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 27 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 513 : i64
  %k = arith.constant 128 : i64
  %n = arith.constant 55 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_513x128xi8_times_128x55xi8_into_513x55xi32_513_128_55_13() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 513x128x55"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 513 : i64
  %lhs_dim1 = arith.constant 128 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 28 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 128 : i64
  %rhs_dim1 = arith.constant 55 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 29 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_513x128xi8_times_128x55xi8_into_513x55xi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 513 : i64
  %k = arith.constant 128 : i64
  %n = arith.constant 55 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_7_160_31_14() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 7x160x31"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 7 : i64
  %lhs_dim1 = arith.constant 160 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 30 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 160 : i64
  %rhs_dim1 = arith.constant 31 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 31 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 7 : i64
  %k = arith.constant 160 : i64
  %n = arith.constant 31 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_7x160xi8_times_160x31xi8_into_7x31xi32_7_160_31_15() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 7x160x31"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 7 : i64
  %lhs_dim1 = arith.constant 160 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 32 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 160 : i64
  %rhs_dim1 = arith.constant 31 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 33 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_7x160xi8_times_160x31xi8_into_7x31xi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 7 : i64
  %k = arith.constant 160 : i64
  %n = arith.constant 31 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_512_330_33_16() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 512x330x33"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 512 : i64
  %lhs_dim1 = arith.constant 330 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 34 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 330 : i64
  %rhs_dim1 = arith.constant 33 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 35 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 512 : i64
  %k = arith.constant 330 : i64
  %n = arith.constant 33 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_512x330xi8_times_330x33xi8_into_512x33xi32_512_330_33_17() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 512x330x33"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 512 : i64
  %lhs_dim1 = arith.constant 330 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 36 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 330 : i64
  %rhs_dim1 = arith.constant 33 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 37 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_512x330xi8_times_330x33xi8_into_512x33xi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 512 : i64
  %k = arith.constant 330 : i64
  %n = arith.constant 33 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_accumulate_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_1_1000_1000_acc_18() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 1x1000x1000"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 1 : i64
  %lhs_dim1 = arith.constant 1000 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 38 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 1000 : i64
  %rhs_dim1 = arith.constant 1000 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 39 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc_dim0 = arith.constant 1 : i64
  %acc_dim1 = arith.constant 1000 : i64
  %acc_element_type = hal.element_type<i32> : i32
  %acc_seed = arith.constant 40 : i32
  %acc = util.call @matmul_test.generate_random_matrix(%device, %acc_dim0, %acc_dim1, %acc_element_type, %acc_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc_copy_dim0 = arith.constant 1 : i64
  %acc_copy_dim1 = arith.constant 1000 : i64
  %acc_copy_element_type = hal.element_type<i32> : i32
  %acc_copy_seed = arith.constant 40 : i32
  %acc_copy = util.call @matmul_test.generate_random_matrix(%device, %acc_copy_dim0, %acc_copy_dim1, %acc_copy_element_type, %acc_copy_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %result = util.call @module.matmul_accumulate_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs, %acc_copy) : (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 1 : i64
  %k = arith.constant 1000 : i64
  %n = arith.constant 1000 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_accumulate_1x1000xi8_times_1000x1000xi8_into_1x1000xi32_1_1000_1000_acc_19() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 1x1000x1000"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 1 : i64
  %lhs_dim1 = arith.constant 1000 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 41 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 1000 : i64
  %rhs_dim1 = arith.constant 1000 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 42 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc_dim0 = arith.constant 1 : i64
  %acc_dim1 = arith.constant 1000 : i64
  %acc_element_type = hal.element_type<i32> : i32
  %acc_seed = arith.constant 43 : i32
  %acc = util.call @matmul_test.generate_random_matrix(%device, %acc_dim0, %acc_dim1, %acc_element_type, %acc_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc_copy_dim0 = arith.constant 1 : i64
  %acc_copy_dim1 = arith.constant 1000 : i64
  %acc_copy_element_type = hal.element_type<i32> : i32
  %acc_copy_seed = arith.constant 43 : i32
  %acc_copy = util.call @matmul_test.generate_random_matrix(%device, %acc_copy_dim0, %acc_copy_dim1, %acc_copy_element_type, %acc_copy_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %result = util.call @module.matmul_accumulate_1x1000xi8_times_1000x1000xi8_into_1x1000xi32(%lhs, %rhs, %acc_copy) : (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 1 : i64
  %k = arith.constant 1000 : i64
  %n = arith.constant 1000 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_accumulate_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_1000_1000_1_acc_20() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 1000x1000x1"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 1000 : i64
  %lhs_dim1 = arith.constant 1000 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 44 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 1000 : i64
  %rhs_dim1 = arith.constant 1 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 45 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc_dim0 = arith.constant 1000 : i64
  %acc_dim1 = arith.constant 1 : i64
  %acc_element_type = hal.element_type<i32> : i32
  %acc_seed = arith.constant 46 : i32
  %acc = util.call @matmul_test.generate_random_matrix(%device, %acc_dim0, %acc_dim1, %acc_element_type, %acc_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc_copy_dim0 = arith.constant 1000 : i64
  %acc_copy_dim1 = arith.constant 1 : i64
  %acc_copy_element_type = hal.element_type<i32> : i32
  %acc_copy_seed = arith.constant 46 : i32
  %acc_copy = util.call @matmul_test.generate_random_matrix(%device, %acc_copy_dim0, %acc_copy_dim1, %acc_copy_element_type, %acc_copy_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %result = util.call @module.matmul_accumulate_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs, %acc_copy) : (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 1000 : i64
  %k = arith.constant 1000 : i64
  %n = arith.constant 1 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_accumulate_1000x1000xi8_times_1000x1xi8_into_1000x1xi32_1000_1000_1_acc_21() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 1000x1000x1"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 1000 : i64
  %lhs_dim1 = arith.constant 1000 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 47 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 1000 : i64
  %rhs_dim1 = arith.constant 1 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 48 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc_dim0 = arith.constant 1000 : i64
  %acc_dim1 = arith.constant 1 : i64
  %acc_element_type = hal.element_type<i32> : i32
  %acc_seed = arith.constant 49 : i32
  %acc = util.call @matmul_test.generate_random_matrix(%device, %acc_dim0, %acc_dim1, %acc_element_type, %acc_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc_copy_dim0 = arith.constant 1000 : i64
  %acc_copy_dim1 = arith.constant 1 : i64
  %acc_copy_element_type = hal.element_type<i32> : i32
  %acc_copy_seed = arith.constant 49 : i32
  %acc_copy = util.call @matmul_test.generate_random_matrix(%device, %acc_copy_dim0, %acc_copy_dim1, %acc_copy_element_type, %acc_copy_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %result = util.call @module.matmul_accumulate_1000x1000xi8_times_1000x1xi8_into_1000x1xi32(%lhs, %rhs, %acc_copy) : (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 1000 : i64
  %k = arith.constant 1000 : i64
  %n = arith.constant 1 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32_1000_1000_1_22() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 1000x1000x1"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 1000 : i64
  %lhs_dim1 = arith.constant 1000 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 50 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 1000 : i64
  %rhs_dim1 = arith.constant 1 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 51 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_DYNxDYNxi8_times_DYNxDYNxi8_into_DYNxDYNxi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 1000 : i64
  %k = arith.constant 1000 : i64
  %n = arith.constant 1 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}

util.func @matmul_1000x1000xi8_times_1000x1xi8_into_1000x1xi32_1000_1000_1_23() attributes {
  iree.reflection = {description = "Matmul shape (MxKxN): 1000x1000x1"}
} {
  %device_index = arith.constant 0 : index
  %device = hal.devices.get %device_index : !hal.device
  %lhs_dim0 = arith.constant 1000 : i64
  %lhs_dim1 = arith.constant 1000 : i64
  %lhs_element_type = hal.element_type<i8> : i32
  %lhs_seed = arith.constant 52 : i32
  %lhs = util.call @matmul_test.generate_random_matrix(%device, %lhs_dim0, %lhs_dim1, %lhs_element_type, %lhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %rhs_dim0 = arith.constant 1000 : i64
  %rhs_dim1 = arith.constant 1 : i64
  %rhs_element_type = hal.element_type<i8> : i32
  %rhs_seed = arith.constant 53 : i32
  %rhs = util.call @matmul_test.generate_random_matrix(%device, %rhs_dim0, %rhs_dim1, %rhs_element_type, %rhs_seed) : (!hal.device, i64, i64, i32, i32) -> !hal.buffer_view
  %acc = util.null : !hal.buffer_view
  %result = util.call @module.matmul_1000x1000xi8_times_1000x1xi8_into_1000x1xi32(%lhs, %rhs) : (!hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view
  %m = arith.constant 1000 : i64
  %k = arith.constant 1000 : i64
  %n = arith.constant 1 : i64
  %transpose_rhs = arith.constant 0 : i32
  util.call @matmul_test.check_matmul_results(%device, %m, %k, %n, %transpose_rhs, %lhs, %rhs, %acc, %result) : (!hal.device, i64, i64, i64, i32, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> ()
  util.return
}


}
