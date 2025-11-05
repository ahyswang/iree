#!/bin/bash 

cmake -GNinja -B ../iree-build-riscv-host/ \
  -DCMAKE_C_COMPILER=clang \
  -DCMAKE_CXX_COMPILER=clang++ \
  -DCMAKE_INSTALL_PREFIX=../iree-build-riscv-host/install \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  .
cmake --build ../iree-build-riscv-host/ --target install

export RISCV_TOOLCHAIN_ROOT=/workspace/yswang26/opt/riscv/toolchain/clang/linux/RISCV/

cmake -GNinja -B ../iree-build-riscv/ \
  -DCMAKE_TOOLCHAIN_FILE="./build_tools/cmake/riscv.toolchain.cmake" \
  -DIREE_HOST_BIN_DIR=$(realpath ../iree-build-riscv-host/tools/) \
  -DRISCV_CPU=linux-riscv_64 \
  -DIREE_BUILD_COMPILER=OFF \
  -DRISCV_TOOLCHAIN_ROOT=${RISCV_TOOLCHAIN_ROOT} \
  .
  
cmake --build ../iree-build-riscv/

