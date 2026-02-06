#!/bin/bash 

cmake --build ./build/ --target  iree_samples_custom_dispatch_cpu_system_plugin iree_samples_custom_dispatch_cpu_standalone_plugin

# /workspace/yswang26/iree/demo/add_lowering/run_step_debug_single_dispatch.sh

./build/tools/iree-compile /workspace/yswang26/iree/samples/custom_dispatch/cpu/plugin/standalone_example.mlir \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=llvm-cpu \
    --dump-compilation-phases-to=./data.ignore/ \
    -o output.vmfb

# ./build/tools/iree-run-module \
#     --device=local-sync \
#     --executable_plugin=./build/samples/custom_dispatch/cpu/plugin/system_plugin.so \
#     --module=output.vmfb  \
#     --function=mixed_invocation \
#     --input=8xf32=2 \
#     --input=8xf32=4

./build/tools/iree-run-module \
    --device=local-sync \
    --executable_plugin=./build/samples/custom_dispatch/cpu/plugin/standalone_plugin.sos \
    --module=output.vmfb  \
    --function=mixed_invocation \
    --input=8xf32=2 \
    --input=8xf32=4


    