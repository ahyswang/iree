module attributes {} {
    // 'tosa.add' op failed level check: operand shape dimension cannot be dynamic
    func.func @main(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>) -> tensor<10xi32> {
        %0 = tosa.add %arg0, %arg1 : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
        return %0 : tensor<10xi32>
    }
 }