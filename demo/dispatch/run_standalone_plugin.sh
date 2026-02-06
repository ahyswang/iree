#!/bin/bash 

cmake --build ./build/ --target  iree_samples_custom_dispatch_cpu_system_plugin

./build/tools/iree-compile /workspace/yswang26/iree/samples/custom_dispatch/cpu/plugin/standalone_ukernel.mlir \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=llvm-cpu \
    -o output.vmfb

./build/tools/iree-run-module \
    --device=local-sync \
    --executable_plugin=./build/samples/custom_dispatch/cpu/plugin/system_plugin.so \
    --module=output.vmfb  \
    --function=mixed_invocation \
    --input=8xf32=2 \
    --input=8xf32=4
