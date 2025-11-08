#!/bin/bash 

#ref iree/docs/website/docs/building-from-source/getting-started.md
#sudo apt install cmake ninja-build clang lld

#git clone https://github.com/iree-org/iree.git
#cd iree
#git submodule update --init

#python -m venv .venv
source .venv/bin/activate

cmake -G Ninja -B $PWD/build/ -S . \
    -DCMAKE_INSTALL_PREFIX=$PWD/build/install \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_C_FLAGS_DEBUG="-O0 -g" \
    -DCMAKE_CXX_FLAGS_DEBUG="-O0 -g" \
    -DIREE_ENABLE_ASSERTIONS=ON \
    -DIREE_ENABLE_SPLIT_DWARF=ON \
    -DIREE_ENABLE_THIN_ARCHIVES=ON \
    -DCMAKE_C_COMPILER=clang \
    -DCMAKE_CXX_COMPILER=clang++ \
    -DIREE_ENABLE_LLD=ON \
    -DIREE_BUILD_PYTHON_BINDINGS=ON  \
    -DPython3_EXECUTABLE="$(which python3)" \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DIREE_BUILD_SAMPLES=ON \
    -DIREE_COMPILER_PLUGIN_PATHS=samples/compiler_plugins/simple_io_sample

cmake --build ./build
