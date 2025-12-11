#!/bin/bash

export PATH=`pwd`/../../build/tools/:$PATH

mkdir -p ./data.ignore/

python net_qadd.py

cp ./mat8_quantized.onnx ./data.ignore/mlp_qdq.onnx

iree-import-onnx ./data.ignore/mlp_qdq.onnx --opset-version 17 -o ./data.ignore/mlp_qdq.mlir
exit
iree-compile ./data.ignore/mlp_qdq.mlir \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=llvm-cpu \
    --iree-llvmcpu-target-cpu=generic   \
    --iree-llvmcpu-link-embedded=false \
    --dump-compilation-phases-to=./data.ignore/ \
    --iree-opt-export-parameter-minimum-size=1024 \
    --iree-opt-export-parameters=./data.ignore/mlp_qdq.onnx.irpa \
    -o ./data.ignore/mlp_qdq.onnx.vmfb \
    --compile-to=input \
    --mlir-print-ir-after-all \
    --mlir-print-ir-after-change  \
    --mlir-print-ir-before-all  > ./data.ignore/log.txt 2>&1 \
