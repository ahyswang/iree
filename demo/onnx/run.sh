#!/bin/bash 

#wget https://github.com/onnx/models/raw/refs/heads/main/validated/vision/classification/mobilenet/model/mobilenetv2-10.onnx
#conda activate base
#python -m pip install iree-base-runtime
#python -m pip install iree-base-compiler
#python -m pip install iree-base-compiler[onnx]
iree-import-onnx mobilenetv2-10.onnx --opset-version 17 -o mobilenetv2.mlir
iree-compile     --iree-hal-target-device=local     --iree-hal-local-target-device-backends=llvm-cpu     --iree-llvmcpu-target-cpu=host     mobilenetv2.mlir -o mobilenet_cpu.vmfb
#iree-compile --iree-llvmcpu-list-targets
iree-run-module     --device=local-task     --module=mobilenet_cpu.vmfb     --function=torch-jit-export     --input="1x3x224x224xf32=0"
iree-run-module     --device=local-task     --module=mobilenet_cpu.vmfb     --function=torch-jit-export     --input="2x3x224x224xf32=0"

mkdir -p /tmp/iree/mobilenetv2/
iree-compile mobilenetv2.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/mobilenetv2 \
  -o /tmp/iree/simple_abs/mobilenetv2.vmfb

# ./../../iree-build/tools/iree-compile mobilenetv2.mlir \
#   --iree-hal-target-device=local   \
#   --iree-hal-local-target-device-backends=llvm-cpu   \
#   --iree-llvmcpu-target-cpu=generic     \
#   --iree-llvmcpu-link-embedded=false  \
#   --compile-to=input    \
#   --mlir-print-ir-after-all \
#   --mlir-print-ir-after-change  \
#   --mlir-print-ir-before-all  > 1.txt 2>&1

# grep Before 1.txt 