func.func @test_add(%arg0: tensor<2x3xf32>,%arg1: tensor<2x3xf32>) -> tensor<2x3xf32>
{
    %result = "tf.Add"(%arg0, %arg1) : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
    return %result: tensor<2x3xf32>
}

func.func @test_add_f16(%arg0: tensor<2x3xf16>,%arg1: tensor<2x3xf16>) -> tensor<2x3xf16>
{
    %result = "tf.Add"(%arg0, %arg1) : (tensor<2x3xf16>, tensor<2x3xf16>) -> tensor<2x3xf16>
    return %result: tensor<2x3xf16>
}

//func.func @test_add_f8(%arg0: tensor<2x3xf8>,%arg1: tensor<2x3xf8>) -> tensor<2x3xf8>
//{
//    %result = "tf.Add"(%arg0, %arg1) : (tensor<2x3xf8>, tensor<2x3xf8>) -> tensor<2x3xf8>
//    return %result: tensor<2x3xf8>
//}