module attributes {} {
    func.func @main(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>) -> tensor<10xi32> {
        %out = tensor.empty() : tensor<10xi32>
        %0 = iree_linalg_ext.myadd ins(%arg0, %arg1 : tensor<10xi32>, tensor<10xi32>) outs(%out : tensor<10xi32>) -> tensor<10xi32>
        return %0 : tensor<10xi32>
    }
 }