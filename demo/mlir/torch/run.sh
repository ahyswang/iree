#!/bin/bash 

export PATH=`pwd`/../../../build/tools/:/workspace/yswang26/mlir/llvm-project/build_debug/bin:$PATH

#llvm-lit ./ -v

mkdir -p ./data.ignore/
iree-compile --compile-to=input ops_types.mlir -o ./data.ignore/ops_types.mlir
iree-compile --compile-to=input ops.mlir -o ./data.ignore/ops.mlir
