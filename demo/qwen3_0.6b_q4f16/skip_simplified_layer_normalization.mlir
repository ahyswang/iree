//input:float16[batch_size,sequence_length,1024]
//skip:float16[batch_size,sequence_length,1024]
//gamma:float16[1024]

//output: float16[batch_size,sequence_length,1024]
//mean: 
//inv_std_var: 
//input_skip_bias_sum:float16[batch_size,sequence_length,1024]

func.func @test_SimplifiedLayerNormalization(
    %input:!torch.vtensor<[?,?,1024],f16>, 
    %skip:!torch.vtensor<[?,?,1024],f16>, 
    %gamma:!torch.vtensor<[1024],f16>
) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
  attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""}
{

    %542:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%input, %skip, %gamma) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 

    func.return %542#0, %542#1, %542#2, %542#3 : !torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>
}