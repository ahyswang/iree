func.func @test_abs_qdq_pertenser( %arg0: !torch.vtensor<[2,2],si32>, %quant_zeros:!torch.vtensor<[],si32>, %quant_scales:!torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],si32> 
  attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"} {
  
  %dq = torch.operator "onnx.DequantizeLinear"(%arg0, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,2],si32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,2],f32>    
  %0 = torch.operator "onnx.Abs"(%dq) : (!torch.vtensor<[2,2],f32>) -> !torch.vtensor<[2,2],f32>
  %q = torch.operator "onnx.QuantizeLinear"(%0, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,2],si32>
  
  func.return %q: !torch.vtensor<[2,2],si32> 
}