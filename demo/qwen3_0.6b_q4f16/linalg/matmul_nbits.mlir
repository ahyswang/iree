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
    %scales:!torch.vtensor<[65536],f16>) 
    //-> !torch.vtensor<[?,?,2048],f16>
    attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {

    //%526 = torch.operator "onnx.MatMulNBits"(%A, %B, %scales) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16>
    //    func.return %526: !torch.vtensor<[?,?,2048],f16>

    %B_1 = torch_c.to_builtin_tensor %B : !torch.vtensor<[2048,32,16],ui8> -> tensor<2048x32x16xi8>
    %B_expanded = tensor.expand_shape %B_1 [[0], [1], [2,3]] output_shape [2048,32,16,1] : tensor<2048x32x16xi8> into tensor<2048x32x16x1xi8>

    %scales_1 = torch_c.to_builtin_tensor %scales : !torch.vtensor<[65536],f16> -> tensor<65536xf16>
    %scales_expanded = tensor.expand_shape %scales_1 [[0,1,2,3]] output_shape [2048,32,1,1] : tensor<65536xf16> into tensor<2048x32x1x1xf16>

    %cst = arith.constant 0.000000e+00 : f16
    %B_quant = tensor.empty() : tensor<2048x32x16x2xf16>
    %B_quant_rlt = linalg.fill ins(%cst : f16) outs(%B_quant: tensor<2048x32x16x2xf16>) -> tensor<2048x32x16x2xf16>
    
    %10 = linalg.generic {indexing_maps = [
        affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, 
        affine_map<(d0, d1, d2, d3) -> (d0, d1, 0, 0)>, 
        affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], 
        iterator_types = ["parallel", "parallel", "parallel", "parallel"]} 
        ins(%B_expanded, %scales_expanded : tensor<2048x32x16x1xi8>, tensor<2048x32x1x1xf16>) 
        outs(%B_quant_rlt : tensor<2048x32x16x2xf16>) 
    {
    ^bb0(%in: i8, %in_1: f16, %out: f16):
        %13 = arith.extui %in : i8 to i32
        %14 = arith.uitofp %13 : i32 to f16
        %16 = arith.mulf %14, %in_1 : f16
        linalg.yield %out : f16
    } -> tensor<2048x32x16x2xf16>
   

    func.return 
}