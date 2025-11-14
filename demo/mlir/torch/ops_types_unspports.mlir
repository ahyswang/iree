
// ----

// CHECK-LABEL: @test_add_si2
func.func @test_add_si2(%arg0: !torch.vtensor<[2,4],si2>, %arg1: !torch.vtensor<[2,4],si2>) -> !torch.vtensor<[2,4],si2> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],si2>, !torch.vtensor<[2,4],si2>) -> !torch.vtensor<[2,4],si2>
  return %0 : !torch.vtensor<[2,4],si2>
}

// ----

// CHECK-LABEL: @test_add_si6
func.func @test_add_si6(%arg0: !torch.vtensor<[2,4],si6>, %arg1: !torch.vtensor<[2,4],si6>) -> !torch.vtensor<[2,4],si6> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],si6>, !torch.vtensor<[2,4],si6>) -> !torch.vtensor<[2,4],si6>
  return %0 : !torch.vtensor<[2,4],si6>
}

// -----
// crash
// CHECK-LABEL: @test_matmul_2d_si8
func.func @test_matmul_2d_si8(%arg0: !torch.vtensor<[3,4],si8>, %arg1: !torch.vtensor<[4,3],si8>) -> !torch.vtensor<[3,3],si8> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],si8>, !torch.vtensor<[4,3],si8>) -> !torch.vtensor<[3,3],si8>
  return %0 : !torch.vtensor<[3,3],si8>
}


// -----
// crash
// CHECK-LABEL: @test_matmul_2d_ui8
func.func @test_matmul_2d_ui8(%arg0: !torch.vtensor<[3,4],ui8>, %arg1: !torch.vtensor<[4,3],ui8>) -> !torch.vtensor<[3,3],ui8> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],ui8>, !torch.vtensor<[4,3],ui8>) -> !torch.vtensor<[3,3],ui8>
  return %0 : !torch.vtensor<[3,3],ui8>
}

