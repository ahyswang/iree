#!/bin/bash

# 1. compile tensorflow lite flatbuffer to tosa mlir
# git clone git@github.com:tensorflow/tensorflow.git
# sudo apt update && sudo apt install bazel-7.7.0
# bazel build -c opt //tensorflow/compiler/mlir/lite:flatbuffer_translate
# bazel build -c opt //tensorflow/compiler/mlir/tosa:tf-tosa-opt

# 2. convert tflite to tosa mlir 
TENSORFLOW_PROJ=/workspace/yswang26/tensorflow/

$TENSORFLOW_PROJ/bazel-bin/tensorflow/compiler/mlir/lite/flatbuffer_translate --tflite-flatbuffer-to-mlir add_model.tflite -o ./data.ignore/model_tfl.mlir
$TENSORFLOW_PROJ/bazel-bin/tensorflow/compiler/mlir/tosa/tf-tosa-opt --tf-tfl-to-tosa-pipeline ./data.ignore/model_tfl.mlir -o ./data.ignore/model_tosa.mlir