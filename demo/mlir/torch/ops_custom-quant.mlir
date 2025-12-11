// RUN:iree-compile --iree-hal-target-device=local --compile-to=input
// iree-opt '-pass-pipeline=builtin.module(func.func(torch-convert-custom-quant-op))' ./ops_custom-quant.mlir -o ./ops_custom-quant.mlir_custom_quant.mlir
// iree-compile --iree-hal-target-device=local --compile-to=input ./ops_custom-quant.mlir_custom_quant.mlir -o -

func.func @forward(%arg0: !torch.vtensor<[1,1,2],f16>) -> !torch.vtensor<[1,1,2],f16> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.opset_versions = {com.microsoft = 1 : si64}, torch.onnx_meta.producer_name = "onnxruntime-genai", torch.onnx_meta.producer_version = "0.0.0"} {
  %q_rhs = torch.vtensor.literal(dense<[[0, 1], [2, 3]]> : tensor<2x2xui8>) : !torch.vtensor<[2,2],ui8>
  %scales = torch.vtensor.literal(dense<1.0> : tensor<2x1x1xf16>) : !torch.vtensor<[2,1,1],f16>
  %zps = torch.vtensor.literal(dense<0.0> : tensor<2x1x1xf16>) : !torch.vtensor<[2,1,1],f16>
  %bit_width = torch.constant.int 8
  %group_size = torch.constant.int 2
  %output = torch.operator "quant.matmul_rhs_group_quant"(%arg0, %q_rhs, %scales, %zps, %bit_width, %group_size) : (!torch.vtensor<[1,1,2],f16>, !torch.vtensor<[2,2],ui8>, !torch.vtensor<[2,1,1],f16>, !torch.vtensor<[2,1,1],f16>, !torch.int, !torch.int) -> !torch.vtensor<[1,1,2],f16>
  return %output : !torch.vtensor<[1,1,2],f16>
}