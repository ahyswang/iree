#!/bin/bash 

export PATH=`pwd`/../../build/tools/:$PATH
source ../../.venv/bin/activate

# python write_tflite.py
# python write_tflite_quant.py
#python write_tflite_quant_myadd.py
python write_tflite_quant_myadd_fixquant.py
iree-import-tflite add_model.tflite -o add_model.mlir
iree-opt add_model.mlir -o add_model_opt.mlir
# fix: 'tosa.const' op requires attribute 'values'
sed '/"tosa.const"/s/value =/values =/' add_model_opt.mlir > add_model_opt_values.mlir

../../build/tools/iree-compile ./add_model_opt_values.mlir --compile-to=input -o ./add_model_opt.mlir.linalg.mlir 