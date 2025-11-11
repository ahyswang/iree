module {
  func.func @"main"(%273: !torch.vtensor<[?,1280,7,7],f32>) -> !torch.vtensor<[?,?],f32> attributes {torch.onnx_meta.ir_version = 6 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "pytorch", torch.onnx_meta.producer_version = "1.8"} {
    %104 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<_630> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %275 = torch.operator "onnx.Shape"(%273) : (!torch.vtensor<[?,1280,7,7],f32>) -> !torch.vtensor<[4],si64> 
    %276 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<_> : tensor<si64>} : () -> !torch.vtensor<[],si64> 
    %277 = torch.operator "onnx.Gather"(%275, %276) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[4],si64>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],si64> 
    %278 = torch.operator "onnx.Constant"() {torch.onnx.value = dense<0> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %279 = torch.operator "onnx.Unsqueeze"(%277, %278) : (!torch.vtensor<[],si64>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],si64> 
    %280 = torch.operator "onnx.Concat"(%279, %104) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],si64>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[2],si64> 
    %281 = torch.operator "onnx.Reshape"(%273, %280) : (!torch.vtensor<[?,1280,7,7],f32>, !torch.vtensor<[2],si64>) -> !torch.vtensor<[?,?],f32> 
    func.return %281: !torch.vtensor<[?,?],f32>
  }
}

{-#
  dialect_resources: {
    builtin: {
      _630: "0x08000000FFFFFFFFFFFFFFFF",
      _: "0x080000000000000000000000"
    }
  }
#-}