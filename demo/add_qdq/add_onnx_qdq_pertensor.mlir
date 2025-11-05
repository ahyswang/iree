module {
  func.func @"main"(
      
      %arg0: !torch.vtensor<[2,2],si32>, %arg1: !torch.vtensor<[2,4],si32>,
      %quant_scales: !torch.vtensor<[],f32>, %quant_zeros: !torch.vtensor<[],si32>,
      %dequant_scales: !torch.vtensor<[],f32>, %dequant_zeros: !torch.vtensor<[],si32>

      ) -> !torch.vtensor<[2,4],si32> attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"} {
        
    %arg1_de = torch.operator "onnx.DequantizeLinear"(%arg1, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,4],si32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,4],f32>    
    %arg1_q = torch.operator "onnx.QuantizeLinear"(%arg1_de, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,4],f32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,4],si32>

    %0 = torch.operator "onnx.Gemm"(%arg0, %arg1_q) : (!torch.vtensor<[2,2],si32>, !torch.vtensor<[2,4],si32>) -> !torch.vtensor<[2,4],si32>
    
    func.return %0: !torch.vtensor<[2,4],si32> 
  }
}