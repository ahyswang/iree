
// -----

// CHECK-LABEL: @test_quantizelinear_si8
func.func @test_quantizelinear_si8(%arg0: !torch.vtensor<[6],f32>, %arg1: !torch.vtensor<[],f32>, %arg2: !torch.vtensor<[],si8>) -> !torch.vtensor<[6],si8> attributes {torch.onnx_meta.ir_version = 9 : si64, torch.onnx_meta.opset_version = 19 : si64} {
  %0 = torch.operator "onnx.QuantizeLinear"(%arg0, %arg1, %arg2) : (!torch.vtensor<[6],f32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si8>) -> !torch.vtensor<[6],si8>
  return %0 : !torch.vtensor<[6],si8>
}

// -----

// CHECK-LABEL: @test_dequantizelinear_si8
func.func @test_dequantizelinear_si8(%arg0: !torch.vtensor<[6],si8>, %arg1: !torch.vtensor<[],f32>, %arg2: !torch.vtensor<[],si8>) -> !torch.vtensor<[6],f32> attributes {torch.onnx_meta.ir_version = 9 : si64, torch.onnx_meta.opset_version = 19 : si64} {
  %0 = torch.operator "onnx.DequantizeLinear"(%arg0, %arg1, %arg2) : (!torch.vtensor<[6],si8>, !torch.vtensor<[],f32>, !torch.vtensor<[],si8>) -> !torch.vtensor<[6],f32>
  return %0 : !torch.vtensor<[6],f32>
}


// -----

// CHECK-LABEL: @test_quantizelinear_si8_f16
func.func @test_quantizelinear_si8_f16(%arg0: !torch.vtensor<[6],f16>, %arg1: !torch.vtensor<[],f32>, %arg2: !torch.vtensor<[],si8>) -> !torch.vtensor<[6],si8> attributes {torch.onnx_meta.ir_version = 9 : si64, torch.onnx_meta.opset_version = 19 : si64} {
  %0 = torch.operator "onnx.QuantizeLinear"(%arg0, %arg1, %arg2) : (!torch.vtensor<[6],f16>, !torch.vtensor<[],f32>, !torch.vtensor<[],si8>) -> !torch.vtensor<[6],si8>
  return %0 : !torch.vtensor<[6],si8>
}

