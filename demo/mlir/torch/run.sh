#!/bin/bash 

export PATH=`pwd`/../../../build/tools/:/workspace/yswang26/mlir/llvm-project/build_debug/bin:$PATH

#llvm-lit ./ -v

mkdir -p ./data.ignore/
iree-compile --compile-to=input ops_types.mlir -o ./data.ignore/ops_types.mlir
iree-compile --compile-to=input ops.mlir -o ./data.ignore/ops.mlir
iree-compile --compile-to=input --mlir-print-ir-before-all --debug quant_dequant_perblock.mlir > log.txt 2>&1
# 转换失败。
iree-compile --compile-to=input -o - --mlir-print-ir-before-all --mlir-print-ir-after-all  ./mix.onnx_noshape_v2_norank.mlir

iree-opt --linalg-generalize-named-ops ops_linalg_generic.mlir -o ./data.ignore/ops_linalg_generic.mlir
