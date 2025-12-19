// RUN: iree-compile --split-input-file --compile-to=input %s > %t  
// RUN: FileCheck %s < %t

func.func @test_dequantizelinear_perblock_si8(%arg0: !torch.vtensor<[32,32],si8>, %arg1: !torch.vtensor<[32,2],f8E4M3FN>, %arg2: !torch.vtensor<[32,2],si8>) -> !torch.vtensor<[32,32],f8E4M3FN> attributes {torch.onnx_meta.ir_version = 9 : si64, torch.onnx_meta.opset_version = 19 : si64} {
  %0 = torch.operator "onnx.DequantizeLinear"(%arg0, %arg1, %arg2) {torch.onnx.axis = 0 : si64,  torch.onnx.block_axis = [0 : si64, 1 : si64],  torch.onnx.block_size = [1 : si64, 16 : si64], torch.onnx.input_dtype = 0 : si64,   torch.onnx.scale_dtype = 0 : si64, torch.onnx.symmetry = 1 : si64, torch.onnx.round_type = 0 : si64, torch.onnx.qdq = 0 : si64} : (!torch.vtensor<[32,32],si8>, !torch.vtensor<[32,2],f8E4M3FN>, !torch.vtensor<[32,2],si8>) -> !torch.vtensor<[32,32],f8E4M3FN> 
  return %0 : !torch.vtensor<[32,32],f8E4M3FN>
}


func.func @test_quantizelinear_perblock_si8(%arg0: !torch.vtensor<[32,32],f8E4M3FN>, %arg1: !torch.vtensor<[32,2],f8E4M3FN>, %arg2: !torch.vtensor<[32,2],si8>) -> !torch.vtensor<[32,32],si8> attributes {torch.onnx_meta.ir_version = 9 : si64, torch.onnx_meta.opset_version = 19 : si64} {
  %0 = torch.operator "onnx.QuantizeLinear"(%arg0, %arg1, %arg2) {torch.onnx.axis = 0 : si64,  torch.onnx.block_axis = [0 : si64, 1 : si64],  torch.onnx.block_size = [1 : si64, 16 : si64], torch.onnx.input_dtype = 0 : si64,   torch.onnx.scale_dtype = 0 : si64, torch.onnx.symmetry = 1 : si64, torch.onnx.round_type = 0 : si64, torch.onnx.qdq = 0 : si64} : (!torch.vtensor<[32,32],f8E4M3FN>, !torch.vtensor<[32,2],f8E4M3FN>, !torch.vtensor<[32,2],si8>) -> !torch.vtensor<[32,32],si8> 
  return %0 : !torch.vtensor<[32,32],si8>
}