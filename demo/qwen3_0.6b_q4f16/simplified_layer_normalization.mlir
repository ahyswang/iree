
//X: float16[batch_size,sequence_length,1024]
//scale: float16[1024]
//Y: float16[batch_size,sequence_length,1024]

func.func @test_SimplifiedLayerNormalization(
  %input: !torch.vtensor<[?,?,1024],f16>,
  %weight: !torch.vtensor<[1024],f16>
  ) -> !torch.vtensor<[?,?,1024],f16> 
  attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""}
{
  %output = torch.operator "onnx.SimplifiedLayerNormalization"(%input, %weight) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> !torch.vtensor<[?,?,1024],f16> 
  func.return %output: !torch.vtensor<[?,?,1024],f16> 
}




