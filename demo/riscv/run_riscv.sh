#!/bin/bash

export QEMU_BIN=/workspace/yswang26/opt/riscv/qemu/linux/RISCV/qemu-riscv64
export RISCV_TOOLCHAIN_ROOT=/workspace/yswang26/opt/riscv/toolchain/clang/linux/RISCV/

rm -rf ./data.ignore/riscv
mkdir -p ./data.ignore/riscv

#Invoke the host compiler tools to produce a bytecode module FlatBuffer
../../../iree-build-riscv-host/install/bin/iree-compile \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-triple=riscv64 \
  --iree-llvmcpu-target-abi=lp64d \
  --iree-llvmcpu-target-cpu-features="+m,+a,+f,+d,+zvl512b,+v" \
  --riscv-v-fixed-length-vector-lmul-max=8 \
  ./simple_abs.mlir \
  -o ./data.ignore/riscv/simple_abs_cpu.vmfb \
  --dump-compilation-phases-to=./data.ignore/riscv/simple_abs_cpu 

unzip data.ignore/riscv/simple_abs_cpu.vmfb -d ./data.ignore/riscv

${QEMU_BIN} \
  -cpu rv64,Zve64d=true,vlen=512,elen=64,vext_spec=v1.0 \
  -L ${RISCV_TOOLCHAIN_ROOT}/sysroot/ \
  ../../../iree-build-riscv/tools/iree-run-module \
  --device=local-task \
  --module=./data.ignore/riscv/simple_abs_cpu.vmfb \
  --function=abs \
  --input=f32=-5  