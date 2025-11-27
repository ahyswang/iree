#!/bin/bash

mkdir -p ./data.ignore/

python main.py

iree-import-onnx ./data.ignore/mlp_qdq.onnx --opset-version 17 -o ./data.ignore/mlp_qdq.mlir

iree-compile ./data.ignore/mlp_qdq.mlir \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=llvm-cpu \
    --iree-llvmcpu-target-cpu=generic   \
    --iree-llvmcpu-link-embedded=false \
    --dump-compilation-phases-to=./data.ignore/ \
    --iree-opt-export-parameter-minimum-size=1024 \
    --iree-opt-export-parameters=./data.ignore/mlp_qdq.onnx.irpa \
    -o ./data.ignore/mlp_qdq.onnx.vmfb