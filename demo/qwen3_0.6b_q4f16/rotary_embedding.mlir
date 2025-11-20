//Q/K
//input float16[batch_size,sequence_length,2048]
//position_ids int64
//cos_cache float16[40960,64]
//sin_cache float16[40960,64]

//output float16[batch_size,sequence_length,2048]

func.func @test_RotaryEmbedding(
    %input:!torch.vtensor<[?,?,2048],f16>, 
    %position_ids:!torch.vtensor<[?,?],si64>, 
    %cos_cache:!torch.vtensor<[40960,64],f16>, 
    %sin_cache:!torch.vtensor<[40960,64],f16>
    ) 
    -> !torch.vtensor<[?,?,2048],f16> 
    attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
    
  %sin_cache38 = torch.operator "onnx.RotaryEmbedding"(%input, %position_ids, %cos_cache, %sin_cache) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
  func.return %sin_cache38: !torch.vtensor<[?,?,2048],f16> 
}

