
// CHECK-LABEL: @test_quantizelinear_per_channel_si8
func.func @test_quantizelinear_per_channel_si8(%arg0: !torch.vtensor<[4,3,7,7],f32>, %arg1: !torch.vtensor<[4],f32>, %arg2: !torch.vtensor<[4],si8>) -> !torch.vtensor<[4,3,7,7],si8> attributes {torch.onnx_meta.ir_version = 10 : si64, torch.onnx_meta.opset_version = 19 : si64} {
  %0 = torch.operator "onnx.QuantizeLinear"(%arg0, %arg1, %arg2) {torch.onnx.axis = 1 : si64} : (!torch.vtensor<[4,3,7,7],f32>, !torch.vtensor<[4],f32>, !torch.vtensor<[4],si8>) -> !torch.vtensor<[4,3,7,7],si8>
  return %0: !torch.vtensor<[4,3,7,7],si8>
}