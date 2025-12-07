#!/bin/bash
python -m sharktank.examples.export_paged_llm_v1 \
  --gguf-file=/workspace/kuihu3/code/iree/data.ignore/models--unsloth--Qwen3-0.6B-GGUF/snapshots/50968a4468ef4233ed78cd7c3de230dd1d61a56b/Qwen3-0.6B-Q4_K_M.gguf \
    --output-mlir=/workspace/kuihu3/code/iree/data.ignore/models--unsloth--Qwen3-0.6B-GGUF/Qwen3-0.6B-GGUF.mlir \
    --output-config=/workspace/kuihu3/code/iree/data.ignore/models--unsloth--Qwen3-0.6B-GGUF/Qwen3-0.6B-GGUF.config \
    --bs-prefill=1 \
    --bs-decode=1
# python -m sharktank.examples.export_paged_llm_v1 \
#   --gguf-file=/workspace/kuihu3/code/iree/data.ignore/open-llama-3b-q4_1.gguf \
#     --output-mlir=/workspace/kuihu3/code/iree/data.ignore/open-llama-3b-q4_1/llama-3b-q4_1.mlir \
#     --output-config=/workspace/kuihu3/code/iree/data.ignore/open-llama-3b-q4_1/llama-3b-q4_1.config \
#     --bs-prefill=1 \
#     --bs-decode=1
# iree-compile data.ignore/open-llama-3b-q4_1/llama-3b-q4_1.mlir \
#   --iree-hal-target-device=local \
#   --iree-hal-local-target-device-backends=llvm-cpu \
#   --iree-llvmcpu-target-cpu=host \
#   --iree-llvmcpu-link-embedded=false \
#   --iree-hal-dump-executable-files-to=data.ignore/open-llama-3b-q4_1 \
#   -o data.ignore/open-llama-3b-q4_1/llama-3b-q4_1_cpu.vmfb
#   --dump-compilation-phases-to=data.ignore/open-llama-3b-q4_1 \