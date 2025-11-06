#!/bin/bash 

#ref iree/docs/website/docs/building-from-source/getting-started.md
#sudo apt install cmake ninja-build clang lld

#git clone https://github.com/iree-org/iree.git
#cd iree
#git submodule update --init

cmake -G Ninja -B ../iree-build/ -S . \  
-DIREE_BUILD_SAMPLES=ON \ 
-DCMAKE_BUILD_TYPE=RelWithDebInfo \
-DIREE_ENABLE_ASSERTIONS=ON \
-DIREE_ENABLE_SPLIT_DWARF=ON \
-DIREE_ENABLE_THIN_ARCHIVES=ON \ 
-DCMAKE_C_COMPILER=clang \
-DCMAKE_CXX_COMPILER=clang++ \   
-DIREE_ENABLE_LLD=ON \
-DIREE_COMPILER_PLUGIN_PATHS=samples/compiler_plugins/simple_io_sample

cmake --build ../iree-build
