#!/bin/bash

export QEMU_BIN=/workspace/yswang26/opt/riscv/qemu/linux/RISCV/qemu-riscv64
export RISCV_TOOLCHAIN_ROOT=/workspace/yswang26/opt/riscv/toolchain/clang/linux/RISCV/

mkdir -p ./data.ignore/riscv

#Invoke the host compiler tools to produce a bytecode module FlatBuffer
../../../iree-build-riscv-host/install/bin/iree-compile \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=vmvx \
  ./simple_abs.mlir \
  -o ./data.ignore/riscv/simple_abs_vmvx.vmfb

#Run the RISC-V emulation:
${QEMU_BIN} \
  -cpu rv64 \
  -L ${RISCV_TOOLCHAIN_ROOT}/sysroot/ \
  ../../../iree-build-riscv/tools/iree-run-module \
  --device=local-task \
  --module=./data.ignore/riscv/simple_abs_vmvx.vmfb \
  --function=abs \
  --input=f32=-5  