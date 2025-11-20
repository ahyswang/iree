
//bits:4 
//block_size:32 
//K:1024
//N:2048

//A: float16[batch_size,sequence_length,1024]
//B: uint8[2048,32,16]
//scales: float16[65536]

//output: float16[batch_size,sequence_length,2048]

func.func @test_MatMulNBits(
    %A:!torch.vtensor<[?,?,1024],f16>, 
    %B:!torch.vtensor<[2048,32,16],ui8>, 
    %scales:!torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16>
    attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {

%526 = torch.operator "onnx.MatMulNBits"(%A, %B, %scales) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16>
    func.return %526: !torch.vtensor<[?,?,2048],f16>
}