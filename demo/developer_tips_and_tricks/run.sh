#!/bin/bash 

# vmvx backend

../iree-build/tools/iree-compile   --iree-hal-target-device=local   --iree-hal-local-target-device-backends=vmvx   $PWD/samples/models/simple_abs.mlir   -o /tmp/simple_abs_vmvx.vmfb

../iree-build/tools/iree-compile   --iree-hal-target-device=local   --iree-hal-local-target-device-backends=vmvx --output-format=vm-c   $PWD/samples/models/simple_abs.mlir   -o /tmp/simple_abs_vmvx.c

../iree-build/tools/iree-dump-module /tmp/simple_abs_vmvx.vmfb
../iree-build/tools/iree-run-module   --module=/tmp/simple_abs_vmvx.vmfb   --device=local-task   --function=abs   --input=f32=-2

# cpu backend

../iree-build/tools/iree-compile   \
--iree-hal-target-device=local   \
--iree-hal-local-target-device-backends=llvm-cpu  \
--iree-llvmcpu-target-cpu=generic   \
--iree-llvmcpu-link-embedded=false  \
$PWD/samples/models/simple_abs.mlir   \
-o /tmp/simple_abs_vmvx.vmfb
unzip -d simple_abs_cpu /tmp/simple_abs_vmvx.vmfb

chmod +rx ./simple_abs_cpu/abs_dispatch_0_system_elf_x86_64.so
readelf -Ws ./simple_abs_cpu/abs_dispatch_0_system_elf_x86_64.so

../iree-build/tools/iree-run-module   --module=/tmp/simple_abs_vmvx.vmfb   --device=local-task   --function=abs   --input=f32=-2


# dumping executable files

mkdir -p /tmp/iree/simple_abs/

iree-compile $PWD/samples/models/simple_abs.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --iree-hal-dump-executable-files-to=/tmp/iree/simple_abs \
  -o /tmp/iree/simple_abs/simple_abs_cpu.vmfb

ls /tmp/iree/simple_abs

# module_abs_dispatch_0.mlir
# module_abs_dispatch_0_system_elf_x86_64_benchmark.mlir
# module_abs_dispatch_0_system_elf_x86_64.codegen.ll
# module_abs_dispatch_0_system_elf_x86_64.codegen.bc
# module_abs_dispatch_0_system_elf_x86_64.linked.ll
# module_abs_dispatch_0_system_elf_x86_64.linked.bc
# module_abs_dispatch_0_system_elf_x86_64.optimized.ll
# module_abs_dispatch_0_system_elf_x86_64.optimized.bc
# module_abs_dispatch_0_system_elf_x86_64.o
# module_abs_dispatch_0_system_elf_x86_64.s
# module_abs_dispatch_0_system_elf_x86_64.so
# simple_abs_cpu.vmfb

# Compiling phase by phase
# https://iree.dev/developers/general/developer-tips/#compiling-phase-by-phase

cat > simple_abs.mlir << EOF
func.func @abs(%input : tensor<f32>) -> (tensor<f32>) {
  %result = math.absf %input : tensor<f32>
  return %result : tensor<f32>
}
EOF

iree-compile simple_abs.mlir --compile-to=input
#iree-compile simple_abs.mlir --compile-to=abi

iree-compile simple_abs.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/simple_abs \
  -o /tmp/iree/simple_abs/simple_abs_cpu.vmfb