
//query float16[batch_size,sequence_length,2048]
//key float16[batch_size,sequence_length,1024]
//value float16[batch_size,sequence_length,1024]
//past_key float16[batch_size,8,past_sequence_length,128]
//past_value float16[batch_size,8,past_sequence_length,128]
//seqlens_k [batch_size,1]
//total_sequence_length int32
//cos_cache null
//sin_cache null

//output float16[batch_size,sequence_length,2048]
//present_key float16[batch_size,8,total_sequence_length,128]
//present_value float16[batch_size,8,total_sequence_length,128]

func.func @test_RotaryEmbedding(
    %query:!torch.vtensor<[?,?,2048],f16>, 
    %key:!torch.vtensor<[?,?,1024],f16>, 
    %value:!torch.vtensor<[?,?,1024],f16>, 
    %past_key:!torch.vtensor<[?,8,?,128],f16>, 
    %past_value:!torch.vtensor<[?,8,?,128],f16>, 
    %seqlens_k:!torch.vtensor<[?,1],si32>, 
    %total_sequence_length:!torch.vtensor<[],si32>
    ) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) { 

    %none = torch.constant.none

    %540:3 = torch.operator "onnx.GroupQueryAttention"(%query, %key, %value, %past_key, %past_value, %seqlens_k, %total_sequence_length, %none, %none) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    
    func.return %540#0, %540#1, %540#2: !torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>
}