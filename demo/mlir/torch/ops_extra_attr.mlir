
func.func @test_extra_attr(%13:!torch.vtensor<[16,32],f32>, %11:!torch.vtensor<[32,32],f32>, %10:!torch.vtensor<[32],f32>) -> !torch.vtensor<[16,32],f32> attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"}{

    %14 = torch.operator "onnx.Gemm"(%13, %11, %10) {torch.onnx.alpha = 1.000000e+00 : f32, torch.onnx.beta = 1.000000e+00 : f32, torch.onnx.custom_float_attr = 3.140000e+00 : f32, torch.onnx.custom_float_list_attr = [1.000000e+00 : f32, 2.000000e+00 : f32, 3.000000e+00 : f32, 4.000000e+00 : f32], torch.onnx.custom_int_attr = 42 : si64, torch.onnx.custom_int_list_attr = [1 : si64, 2 : si64, 3 : si64, 4 : si64], torch.onnx.custom_int_tensor_attr = dense_resource<dense_resource_test_2x2xf32> : tensor<2x2xf32>, torch.onnx.transB = 1 : si64} : (!torch.vtensor<[16,32],f32>, !torch.vtensor<[32,32],f32>, !torch.vtensor<[32],f32>) -> !torch.vtensor<[16,32],f32> 

    func.return %14 : !torch.vtensor<[16,32],f32>
}


func.func @test_extra_attr_dyn(%13:!torch.vtensor<[?,32],f32>, %11:!torch.vtensor<[32,32],f32>, %10:!torch.vtensor<[32],f32>) -> !torch.vtensor<[?,?],f32> attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"}{
    %14 = torch.operator "onnx.Gemm"(%13, %11, %10) {torch.onnx.alpha = 1.000000e+00 : f32, torch.onnx.beta = 1.000000e+00 : f32, torch.onnx.custom_float_attr = 3.140000e+00 : f32, torch.onnx.custom_float_list_attr = [1.000000e+00 : f32, 2.000000e+00 : f32, 3.000000e+00 : f32, 4.000000e+00 : f32], torch.onnx.custom_int_attr = 42 : si64, torch.onnx.custom_int_list_attr = [1 : si64, 2 : si64, 3 : si64, 4 : si64], torch.onnx.custom_int_tensor_attr = dense_resource<dense_resource_test_2x2xf32> : tensor<2x2xf32>, torch.onnx.transB = 1 : si64} : (!torch.vtensor<[?,32],f32>, !torch.vtensor<[32,32],f32>, !torch.vtensor<[32],f32>) -> !torch.vtensor<[?,?],f32> 

    func.return %14 : !torch.vtensor<[?,?],f32>
}


// Resources are kept at end of file. New tests should be added above this.
{-#
  dialect_resources: {
    builtin: {
      dense_resource_test_2xi32: "0x400000000100000002000000",
      dense_resource_test_5xf32: "0x08000000041A503E183382BEFCEEBABE7A3AF0BE0E9DEE3E",
      dense_resource_test_2x2xf32: "0x0800000054A3B53ED6C0B33E55D1A2BDE5D2BB3E"
    }
  }
#-}