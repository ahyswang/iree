#!/bin/bash 

export PATH=`pwd`/../../../build/tools/:/workspace/yswang26/mlir/llvm-project/build_debug/bin:$PATH

mkdir ./data.ignore 

python tf-lower-to-mlprogram-and-hlo.py tf_ops.mlir ./data.ignore/output.mlir 
iree-compile --compile-to=input ./data.ignore/output.mlir -o ./data.ignore/output_opt.mlir