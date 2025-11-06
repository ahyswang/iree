util.func @matmul_accumulate_8x8xi8_times_8x8xi8_into_8x8xi32(%lhs: tensor<8x8xi8>, %rhs: tensor<8x8xi8>, %acc: tensor<8x8xi32>) -> tensor<8x8xi32> {
  %result = linalg.matmul ins(%lhs, %rhs: tensor<8x8xi8>, tensor<8x8xi8>) outs(%acc: tensor<8x8xi32>) -> tensor<8x8xi32>

  util.return %result: tensor<8x8xi32>
}
