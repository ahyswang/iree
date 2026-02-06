module {
  func.func @"main"(%arg0: !torch.vtensor<[10],si32>, %arg1: !torch.vtensor<[10],si32>) -> !torch.vtensor<[10],si32> attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"} {
    %110 = torch.operator "onnx.Sub"(%arg0, %arg1) : (!torch.vtensor<[10],si32>, !torch.vtensor<[10],si32>) -> !torch.vtensor<[10],si32> 
    %111 = torch.operator "onnx.Sub"(%110, %arg1) : (!torch.vtensor<[10],si32>, !torch.vtensor<[10],si32>) -> !torch.vtensor<[10],si32> 
    func.return %111: !torch.vtensor<[10],si32> 
  }
}
