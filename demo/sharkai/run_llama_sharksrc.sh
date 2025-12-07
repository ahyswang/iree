#!/bin/bash


export PATH=/workspace/kuihu3/envs/iree/bin/:$PATH
mkdir -p ./data.ignore/open-llama-3b-q4_1/
/workspace/yswang26/llm/amd-shark-ai/amd-shark-ai/bin/python -m sharktank.examples.export_paged_llm_v1 \
  --gguf-file=/workspace/kuihu3/code/iree/data.ignore/open-llama-3b-q4_1.gguf \
  --output-mlir=./data.ignore/open-llama-3b-q4_1/llama-3b-q4_1.mlir \
  --output-config=./data.ignore/open-llama-3b-q4_1/llama-3b-q4_1.config \
  --bs-prefill=1 \
  --bs-decode=1

#    > code ./data.ignore/open-llama-3b-q4_1/llama-3b-q4_1.mlir line:68493
#    %2 = tensor.empty(%dim_1, %dim_2) : tensor<?x?x32x32x100xf16>
#    //%3 = iree_linalg_ext.gather dimension_map = [0] ins(%extracted_slice, %arg1 : tensor<?x32x32x100xf16>, tensor<?x?xi64>) outs(%2 : tensor<?x?x32x32x100xf16>) -> tensor<?x?x32x32x100xf16>
#    //util.return %3 : tensor<?x?x32x32x100xf16>
#    util.return %2:tensor<?x?x32x32x100xf16>

/workspace/yswang26/iree/build/tools/iree-compile ./data.ignore/open-llama-3b-q4_1/llama-3b-q4_1.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=host \
  --iree-llvmcpu-link-embedded=false \
  --iree-hal-dump-executable-files-to=data.ignore/open-llama-3b-q4_1 \
  -o data.ignore/open-llama-3b-q4_1/llama-3b-q4_1_cpu.vmfb
  #--dump-compilation-phases-to=data.ignore/open-llama-3b-q4_1 \