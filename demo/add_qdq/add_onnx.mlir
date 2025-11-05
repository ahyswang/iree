module {
  func.func @"main"(%arg0: !torch.vtensor<[2,2],si32>, %arg1: !torch.vtensor<[2,4],si32>) -> !torch.vtensor<[2,4],si32> attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"} {

    %0 = torch.operator "onnx.Gemm"(%arg0, %arg1) : (!torch.vtensor<[2,2],si32>, !torch.vtensor<[2,4],si32>) -> !torch.vtensor<[2,4],si32>
    
    func.return %0: !torch.vtensor<[2,4],si32> 
  }
}