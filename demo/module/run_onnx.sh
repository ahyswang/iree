#!/bin/bash
cmake --build ./build/ --target iree_samples_custom_module_dynamic_module --target iree-run-module  -j16
./build/tools/iree-compile  \
    --iree-hal-target-device=local  \
    --iree-hal-local-target-device-backends=vmvx  \
    ./demo/module/add_onnx.mlir  \
    -o=/tmp/example.vmfb \
    --dump-compilation-phases-to=./data.ignore/ \
    --mlir-print-ir-before-all \
    --mlir-print-ir-after-all \
    > log.txt 2>&1

./build/tools/iree-run-module \
    --module=./build/samples/custom_module/dynamic/module.so@create_custom_module \
    --module=./build/samples/custom_module/dynamic/module.so@create_nebula_module \
    --module=/tmp/example.vmfb --function=main \
    --input="5xi8=1" \
    --input="5xi8=1" 