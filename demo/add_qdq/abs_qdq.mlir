//../../build/tools/iree-opt --convert-torch-onnx-to-torch ./add_onnx_qdq_pertensor_v1.mlir --mlir-print-ir-before-all
//../../build/tools/iree-opt --convert-torch-onnx-to-torch --torch-to-iree ./abs_qdq.mlir --mlir-print-ir-before-all 

func.func @test_abs_qdq_pertenser( %arg0: !torch.vtensor<[2,2],si32>, %quant_zeros:!torch.vtensor<[],si32>, %quant_scales:!torch.vtensor<[],f32>) -> !torch.vtensor<[2,2],si32> 
  attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"} {
  
  %dq = torch.operator "onnx.DequantizeLinear"(%arg0, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,2],si32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,2],f32>    
  %0 = torch.operator "onnx.Abs"(%dq) : (!torch.vtensor<[2,2],f32>) -> !torch.vtensor<[2,2],f32>
  %q = torch.operator "onnx.QuantizeLinear"(%0, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,2],si32>
  
  func.return %q: !torch.vtensor<[2,2],si32> 
}

func.func @test_abs_qdq_perchannel( %arg0: !torch.vtensor<[2,2],si32>, %quant_zeros:!torch.vtensor<[2],si32>, %quant_scales:!torch.vtensor<[2],f32>) -> !torch.vtensor<[2,2],si32> 
  attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"} {

    %dq = torch.operator "onnx.DequantizeLinear"(%arg0, %quant_scales, %quant_zeros){torch.onnx.axis = 1 : si64}:(!torch.vtensor<[2,2],si32>, !torch.vtensor<[2],f32>, !torch.vtensor<[2],si32>) -> !torch.vtensor<[2,2],f32>    
    %0 = torch.operator "onnx.Abs"(%dq) : (!torch.vtensor<[2,2],f32>) -> !torch.vtensor<[2,2],f32>
    %q = torch.operator "onnx.QuantizeLinear"(%0, %quant_scales, %quant_zeros){torch.onnx.axis = 1 : si64} : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2],f32>, !torch.vtensor<[2],si32>) -> !torch.vtensor<[2,2],si32>
    
    func.return %q: !torch.vtensor<[2,2],si32> 
  }


  func.func @test_gemm_perchannel(
      %arg0: !torch.vtensor<[2,2],si32>, 
      %arg1: !torch.vtensor<[2,4],si32>,
      %quant_scales: !torch.vtensor<[],f32>, %quant_zeros: !torch.vtensor<[],si32>
  ) -> !torch.vtensor<[2,4],si32> 
    attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"} {
        
    %arg0_dq = torch.operator "onnx.DequantizeLinear"(%arg0, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,2],si32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,2],f32>  
    %arg1_dq = torch.operator "onnx.DequantizeLinear"(%arg1, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,4],si32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,4],f32>   

    %0 = torch.operator "onnx.Gemm"(%arg0_dq, %arg1_dq) : (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2,4],f32>) -> !torch.vtensor<[2,4],f32>

    %q = torch.operator "onnx.QuantizeLinear"(%0, %quant_scales, %quant_zeros) : (!torch.vtensor<[2,4],f32>, !torch.vtensor<[],f32>, !torch.vtensor<[],si32>) -> !torch.vtensor<[2,4],si32>

    func.return %q:!torch.vtensor<[2,4],si32> 
  }
