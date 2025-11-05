rm -rf ./data.ignore/add_dynamic/
mkdir -p ./data.ignore/add_dynamic/

# 1. full test.

input_mlir=add_onnx_qdq_perchannel.mlir

iree-compile $input_mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=./data.ignore/add_dynamic/ \
  --iree-global-optimization-opt-level=O0 \
  -o ./data.ignore/add_dynamic/add_dynamic.vmfb \
--mlir-print-ir-after-all \
--mlir-print-ir-after-change \
--mlir-print-ir-before-all 


iree-run-module   \
--module=./data.ignore/add_dynamic/add_dynamic.vmfb   \
--device=local-task   \
--function=main    \
--input=2x2xi32=[[1,2][3,4]] \
--input=2x4xi32=[[1,1,1,1][1,1,1,1]] \
--input=4xf32=[1.0,1.0,1.0,1.0] \
--input=4xi32=[0,0,0,0] \
--input=4xf32=[1.0,1.0,1.0,1.0] \
--input=4xi32=[0,0,0,0] \
--expected_output=2x4xi32=[[3,3,3,3][7,7,7,7]] 

