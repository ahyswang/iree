#!/bin/bash
export PATH=`pwd`/../../build/tools/:$PATH

save_dir=./data.ignore/add_lowering_static_lib/
mkdir -p $save_dir

iree-compile \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=llvm-cpu \
    --iree-llvmcpu-target-cpu=generic \
    --iree-llvmcpu-link-embedded=false \
    --iree-llvmcpu-link-static \
    --iree-llvmcpu-static-library-output-path=add.o \
    --iree-vm-target-index-bits=32 \
    add.mlir \
    -o \
    add.vmfb