module {
  func.func @"main"(%arg0: !torch.vtensor<[5],si8>, %arg1: !torch.vtensor<[5],si8>) -> !torch.vtensor<[5],si8> attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"} {
    %110 = torch.operator "onnx.Add"(%arg0, %arg1) : (!torch.vtensor<[5],si8>, !torch.vtensor<[5],si8>) -> !torch.vtensor<[5],si8> 
    //func.return %110: !torch.vtensor<[5],si8>

    %1111 = torch_c.to_builtin_tensor %110 : !torch.vtensor<[5],si8> -> tensor<5xi8>
    flow.tensor.trace "conv.outputs" = [%1111 : tensor<5xi8>]
    %2222 = torch_c.from_builtin_tensor %1111 : tensor<5xi8> -> !torch.vtensor<[5],si8>
 
    func.return %2222: !torch.vtensor<[5],si8> 
  }
}