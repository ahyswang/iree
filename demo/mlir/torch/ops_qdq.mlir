// RUN:iree-compile --iree-hal-target-device=local --compile-to=input

func.func @test_add(%arg0: !torch.vtensor<[3,4,5],f32>, %arg1: !torch.vtensor<[3,4,5],f32>) -> !torch.vtensor<[3,4,5],f32> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
  %0 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[3,4,5],f32>, !torch.vtensor<[3,4,5],f32>) -> !torch.vtensor<[3,4,5],f32>
  return %0 : !torch.vtensor<[3,4,5],f32>
}

func.func @test_abs_qdq_pertenser( %arg0: !torch.vtensor<[2,2],si32>, %arg1: !torch.vtensor<[2,2],si32>, %quant_zeros:!torch.vtensor<[],si32>, %quant_scales:!torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],si32> 
  attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"} {
  
  %arg0_dq = torch.operator "onnx.DequantizeLinear"(%arg0, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,2],si32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,2],f32>    
  %arg1_dq = torch.operator "onnx.DequantizeLinear"(%arg1, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,2],si32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,2],f32>    

  %0 = torch.operator "onnx.Add"(%arg0_dq, %arg1_dq) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2,2],f32>) -> !torch.vtensor<[2,2],f32>

  %q = torch.operator "onnx.QuantizeLinear"(%0, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,2],si32>
  
  func.return %q: !torch.vtensor<[2,2],si32> 
}
