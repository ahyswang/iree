#!/bin/bash 

#ref iree/docs/website/docs/building-from-source/getting-started.md
#sudo apt install cmake ninja-build clang lld

#git clone https://github.com/iree-org/iree.git
#cd iree
#git submodule update --init

export RISCV_TOOLCHAIN_ROOT=/workspace/yswang26/opt/riscv/

cmake -G Ninja -B ../iree-build-riscv/ -S . \   
-DCMAKE_BUILD_TYPE=RelWithDebInfo \
-DIREE_ENABLE_ASSERTIONS=ON \
-DIREE_ENABLE_SPLIT_DWARF=ON \
-DIREE_ENABLE_THIN_ARCHIVES=ON \ 
-DCMAKE_C_COMPILER=clang \
-DCMAKE_CXX_COMPILER=clang++ \   
-DIREE_ENABLE_LLD=ON \
-DCMAKE_TOOLCHAIN_FILE="./build_tools/cmake/riscv.toolchain.cmake" \
-DIREE_HOST_BIN_DIR=$(realpath ../iree-build/tools/) \
-DRISCV_TOOLCHAIN_ROOT=${RISCV_TOOLCHAIN_ROOT} \

cmake --build ../iree-build