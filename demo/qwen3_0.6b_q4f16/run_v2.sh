#!/bin/bash
export PATH=`pwd`/../../../../build/tools/:/workspace/yswang26/mlir/llvm-project/build_debug/bin:$PATH

llvm-lit  ./linalg/rmslayernorm.mlir -v
iree-compile --split-input-file ./linalg/rmslayernorm.mlir  --iree-hal-target-device=local --iree-hal-local-target-device-backends=llvm-cpu --iree-llvmcpu-target-cpu=generic -o rmslayernorm.vmfb
iree-run-module --module=rmslayernorm.vmfb --device=local-task --function=test_rmslayernorm_v0 --input=2x4xf16=[[0,1,2,3,],[4,5,6,7]] --input=4xf16=[1,2,3,4]
# 2x4xf16=[0 1.06934 3.20703 6.41406][0.712891 1.78223 3.20703 4.98828]

llvm-lit  ./linalg/rotaryembedding.mlir -v
iree-compile --split-input-file ./linalg/rotaryembedding.mlir  --iree-hal-target-device=local --iree-hal-local-target-device-backends=llvm-cpu --iree-llvmcpu-target-cpu=generic -o rotaryembedding.vmfb