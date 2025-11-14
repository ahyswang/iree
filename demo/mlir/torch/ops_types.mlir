// RUN: iree-compile %s --split-input-file --compile-to=input | FileCheck %s

// -----

// CHECK-LABEL: @test_add_f32
func.func @test_add_f32(%arg0: !torch.vtensor<[2,4],f32>, %arg1: !torch.vtensor<[2,4],f32>) -> !torch.vtensor<[2,4],f32> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],f32>, !torch.vtensor<[2,4],f32>) -> !torch.vtensor<[2,4],f32>
  return %0 : !torch.vtensor<[2,4],f32>
}

// -----

// CHECK-LABEL: @test_add_f16
func.func @test_add_f16(%arg0: !torch.vtensor<[2,4],f16>, %arg1: !torch.vtensor<[2,4],f16>) -> !torch.vtensor<[2,4],f16> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],f16>, !torch.vtensor<[2,4],f16>) -> !torch.vtensor<[2,4],f16>
  return %0 : !torch.vtensor<[2,4],f16>
}

// -----

// CHECK-LABEL: @test_add_bf16
func.func @test_add_bf16(%arg0: !torch.vtensor<[2,4],bf16>, %arg1: !torch.vtensor<[2,4],bf16>) -> !torch.vtensor<[2,4],bf16> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],bf16>, !torch.vtensor<[2,4],bf16>) -> !torch.vtensor<[2,4],bf16>
  return %0 : !torch.vtensor<[2,4],bf16>
}

// -----

// CHECK-LABEL: @test_add_f8E4M3FN
func.func @test_add_f8E4M3FN(%arg0: !torch.vtensor<[2,4],f8E4M3FN>, %arg1: !torch.vtensor<[2,4],f8E4M3FN>) -> !torch.vtensor<[2,4],f8E4M3FN> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],f8E4M3FN>, !torch.vtensor<[2,4],f8E4M3FN>) -> !torch.vtensor<[2,4],f8E4M3FN>
  return %0 : !torch.vtensor<[2,4],f8E4M3FN>
}

// -----

// CHECK-LABEL: @test_add_si32
func.func @test_add_si32(%arg0: !torch.vtensor<[2,4],si32>, %arg1: !torch.vtensor<[2,4],si32>) -> !torch.vtensor<[2,4],si32> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],si32>, !torch.vtensor<[2,4],si32>) -> !torch.vtensor<[2,4],si32>
  return %0 : !torch.vtensor<[2,4],si32>
}

// ----

// CHECK-LABEL: @test_add_si64
func.func @test_add_si64(%arg0: !torch.vtensor<[2,4],si64>, %arg1: !torch.vtensor<[2,4],si64>) -> !torch.vtensor<[2,4],si64> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],si64>, !torch.vtensor<[2,4],si64>) -> !torch.vtensor<[2,4],si64>
  return %0 : !torch.vtensor<[2,4],si64>
}

// ----

// CHECK-LABEL: @test_add_si16
func.func @test_add_si16(%arg0: !torch.vtensor<[2,4],si16>, %arg1: !torch.vtensor<[2,4],si16>) -> !torch.vtensor<[2,4],si16> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],si16>, !torch.vtensor<[2,4],si16>) -> !torch.vtensor<[2,4],si16>
  return %0 : !torch.vtensor<[2,4],si16>
}

// ----

// CHECK-LABEL: @test_add_si8
func.func @test_add_si8(%arg0: !torch.vtensor<[2,4],si8>, %arg1: !torch.vtensor<[2,4],si8>) -> !torch.vtensor<[2,4],si8> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],si8>, !torch.vtensor<[2,4],si8>) -> !torch.vtensor<[2,4],si8>
  return %0 : !torch.vtensor<[2,4],si8>
}

// ----

// CHECK-LABEL: @test_add_si4
func.func @test_add_si4(%arg0: !torch.vtensor<[2,4],si4>, %arg1: !torch.vtensor<[2,4],si4>) -> !torch.vtensor<[2,4],si4> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],si4>, !torch.vtensor<[2,4],si4>) -> !torch.vtensor<[2,4],si4>
  return %0 : !torch.vtensor<[2,4],si4>
}

// -----

// CHECK-LABEL: @test_add_ui32
func.func @test_add_ui32(%arg0: !torch.vtensor<[2,4],ui32>, %arg1: !torch.vtensor<[2,4],ui32>) -> !torch.vtensor<[2,4],ui32> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],ui32>, !torch.vtensor<[2,4],ui32>) -> !torch.vtensor<[2,4],ui32>
  return %0 : !torch.vtensor<[2,4],ui32>
}

// ----

// CHECK-LABEL: @test_add_ui64
func.func @test_add_ui64(%arg0: !torch.vtensor<[2,4],ui64>, %arg1: !torch.vtensor<[2,4],ui64>) -> !torch.vtensor<[2,4],ui64> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],ui64>, !torch.vtensor<[2,4],ui64>) -> !torch.vtensor<[2,4],ui64>
  return %0 : !torch.vtensor<[2,4],ui64>
}

// ----

// CHECK-LABEL: @test_add_ui16
func.func @test_add_ui16(%arg0: !torch.vtensor<[2,4],ui16>, %arg1: !torch.vtensor<[2,4],ui16>) -> !torch.vtensor<[2,4],ui16> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],ui16>, !torch.vtensor<[2,4],ui16>) -> !torch.vtensor<[2,4],ui16>
  return %0 : !torch.vtensor<[2,4],ui16>
}

// ----

// CHECK-LABEL: @test_add_ui8
func.func @test_add_ui8(%arg0: !torch.vtensor<[2,4],ui8>, %arg1: !torch.vtensor<[2,4],ui8>) -> !torch.vtensor<[2,4],ui8> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],ui8>, !torch.vtensor<[2,4],ui8>) -> !torch.vtensor<[2,4],ui8>
  return %0 : !torch.vtensor<[2,4],ui8>
}


// ----

// CHECK-LABEL: @test_add_ui4
func.func @test_add_ui4(%arg0: !torch.vtensor<[2,4],ui4>, %arg1: !torch.vtensor<[2,4],ui4>) -> !torch.vtensor<[2,4],ui4> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  // CHECK:
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[2,4],ui4>, !torch.vtensor<[2,4],ui4>) -> !torch.vtensor<[2,4],ui4>
  return %0 : !torch.vtensor<[2,4],ui4>
}


// -----

// CHECK-LABEL: @test_matmul_2d_f32
func.func @test_matmul_2d_f32(%arg0: !torch.vtensor<[3,4],f32>, %arg1: !torch.vtensor<[4,3],f32>) -> !torch.vtensor<[3,3],f32> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],f32>, !torch.vtensor<[4,3],f32>) -> !torch.vtensor<[3,3],f32>
  return %0 : !torch.vtensor<[3,3],f32>
}


// -----

// CHECK-LABEL: @test_matmul_2d_f16
func.func @test_matmul_2d_f16(%arg0: !torch.vtensor<[3,4],f16>, %arg1: !torch.vtensor<[4,3],f16>) -> !torch.vtensor<[3,3],f16> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],f16>, !torch.vtensor<[4,3],f16>) -> !torch.vtensor<[3,3],f16>
  return %0 : !torch.vtensor<[3,3],f16>
}

// -----

// CHECK-LABEL: @test_matmul_2d_f8E4M3FN
func.func @test_matmul_2d_f8E4M3FN(%arg0: !torch.vtensor<[3,4],f8E4M3FN>, %arg1: !torch.vtensor<[4,3],f8E4M3FN>) -> !torch.vtensor<[3,3],f8E4M3FN> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],f8E4M3FN>, !torch.vtensor<[4,3],f8E4M3FN>) -> !torch.vtensor<[3,3],f8E4M3FN>
  return %0 : !torch.vtensor<[3,3],f8E4M3FN>
}

// -----

// CHECK-LABEL: @test_matmul_2d_si32
func.func @test_matmul_2d_si32(%arg0: !torch.vtensor<[3,4],si32>, %arg1: !torch.vtensor<[4,3],si32>) -> !torch.vtensor<[3,3],si32> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],si32>, !torch.vtensor<[4,3],si32>) -> !torch.vtensor<[3,3],si32>
  return %0 : !torch.vtensor<[3,3],si32>
}

// -----

// CHECK-LABEL: @test_matmul_2d_si16
func.func @test_matmul_2d_si16(%arg0: !torch.vtensor<[3,4],si16>, %arg1: !torch.vtensor<[4,3],si16>) -> !torch.vtensor<[3,3],si16> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],si16>, !torch.vtensor<[4,3],si16>) -> !torch.vtensor<[3,3],si16>
  return %0 : !torch.vtensor<[3,3],si16>
}


// -----

// CHECK-LABEL: @test_matmul_2d_si4
func.func @test_matmul_2d_si4(%arg0: !torch.vtensor<[3,4],si4>, %arg1: !torch.vtensor<[4,3],si4>) -> !torch.vtensor<[3,3],si4> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],si4>, !torch.vtensor<[4,3],si4>) -> !torch.vtensor<[3,3],si4>
  return %0 : !torch.vtensor<[3,3],si4>
}

// -----

// CHECK-LABEL: @test_matmul_2d_ui32
func.func @test_matmul_2d_ui32(%arg0: !torch.vtensor<[3,4],ui32>, %arg1: !torch.vtensor<[4,3],ui32>) -> !torch.vtensor<[3,3],ui32> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],ui32>, !torch.vtensor<[4,3],ui32>) -> !torch.vtensor<[3,3],ui32>
  return %0 : !torch.vtensor<[3,3],ui32>
}


// -----

// CHECK-LABEL: @test_matmul_2d_ui16
func.func @test_matmul_2d_ui16(%arg0: !torch.vtensor<[3,4],ui16>, %arg1: !torch.vtensor<[4,3],ui16>) -> !torch.vtensor<[3,3],ui16> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],ui16>, !torch.vtensor<[4,3],ui16>) -> !torch.vtensor<[3,3],ui16>
  return %0 : !torch.vtensor<[3,3],ui16>
}

// -----

// CHECK-LABEL: @test_matmul_2d_ui4
func.func @test_matmul_2d_ui4(%arg0: !torch.vtensor<[3,4],ui4>, %arg1: !torch.vtensor<[4,3],ui4>) -> !torch.vtensor<[3,3],ui4> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 13 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.MatMul"(%arg0, %arg1) : (!torch.vtensor<[3,4],ui4>, !torch.vtensor<[4,3],ui4>) -> !torch.vtensor<[3,3],ui4>
  return %0 : !torch.vtensor<[3,3],ui4>
}