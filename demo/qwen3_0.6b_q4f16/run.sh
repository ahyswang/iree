#!/bin/bash

iree-import-onnx ../../../llm/onnx-community-Qwen3-0.6B/model_q4f16.onnx -o model_q4f16.onnx.mlir --large-model --externalize-params

#iree-compile     --iree-hal-target-device=local     --iree-hal-local-target-device-backends=llvm-cpu     --iree-llvmcpu-target-cpu=host     model_q4f16.onnx.mlir -o model_q4f16.onnx.mlir.vmfb --mlir-print-ir-before-all --mlir-print-ir-after-change   > log.txt 2>&1

iree-compile     --iree-hal-target-device=local     --iree-hal-local-target-device-backends=llvm-cpu     --iree-llvmcpu-target-cpu=host   --compile-to=input simplified_layer_normalization.mlir  -o  - > log.txt 2>&1
iree-compile     --iree-hal-target-device=local     --iree-hal-local-target-device-backends=llvm-cpu     --iree-llvmcpu-target-cpu=host   --compile-to=input rotary_embedding.mlir  -o  - > log.txt 2>&1
iree-compile     --iree-hal-target-device=local     --iree-hal-local-target-device-backends=llvm-cpu     --iree-llvmcpu-target-cpu=host   --compile-to=input group_query_attention.mlir
iree-compile     --iree-hal-target-device=local     --iree-hal-local-target-device-backends=llvm-cpu     --iree-llvmcpu-target-cpu=host   --compile-to=input skip_simplified_layer_normalization.mlir



iree-compile     --iree-hal-target-device=local     --iree-hal-local-target-device-backends=llvm-cpu     --iree-llvmcpu-target-cpu=host   --compile-to=input rotary_embedding_debug.mlir --mlir-print-ir-before-all --mlir-print-ir-after-all --mlir-print-ir-after-change -o  - > log.txt 2>&1