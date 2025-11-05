IREE_COMPILE=`pwd`/../../../iree-build/tools/iree-opt
IREE_COMPILE=`pwd`/../../../iree-build/tools/iree-compile
IREE_RUN_MODULE=`pwd`/../../../iree-build/tools/iree-run-module
IREE_BENCHMARK_MODULE=`pwd`/../../../iree-build/tools/iree-benchmark-module
IREE_DIR=`pwd`/../../../iree/


$IREE_COMPILE --iree-hal-target-backends=llvm-cpu --iree-hal-target-device=x86 add.mlir \
--mlir-disable-threading \
--mlir-elide-elementsattrs-if-larger=10 \
--mlir-print-ir-after-all \
--mlir-print-ir-after-change \
--mlir-print-ir-before-all -o log.vmbf &> log.txt

rm -rf  /tmp/iree/add_lowering/
mkdir -p /tmp/iree/add_lowering/

iree-compile add.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/add_lowering \
  -o /tmp/iree/add_lowering/add_lowering.vmfb


iree-run-module   \
--module=/tmp/iree/add_lowering/add_lowering.vmfb   \
--device=local-task   \
--function=main    \
--input=10xi32=1 2 3 4 5 6 7 8 9 10 \
--input=10xi32=1 2 3 4 5 6 7 8 9 10 \
--expected_output=10xi32=2 4 6 8 10 12 14 16 18 20

iree-compile add.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/add_lowering \
  -o - \
  --compile-to=input

# embedded false
iree-compile add.mlir \
--iree-hal-target-device=local \
--iree-hal-local-target-device-backends=llvm-cpu \
--iree-llvmcpu-target-cpu=generic   \
--iree-llvmcpu-link-embedded=false \
--dump-compilation-phases-to=/tmp/iree/add_lowering \
-o add_lowering_embeded_false.vmfb

unzip add_lowering_embeded_false.vmfb -d add_lowering_embeded_false
chmod +r ./add_lowering_embeded_false/*

# embedded = true
iree-compile add.mlir \
--iree-hal-target-device=local \
--iree-hal-local-target-device-backends=llvm-cpu \
--iree-llvmcpu-target-cpu=generic   \
--iree-llvmcpu-link-embedded=true \
--dump-compilation-phases-to=/tmp/iree/add_lowering \
-o add_lowering_embeded_true.vmfb

unzip add_lowering_embeded_true.vmfb -d add_lowering_embeded_true
chmod +r ./add_lowering_embeded_true/*

# output-format

iree-compile add.mlir \
--iree-hal-target-device=local \
--iree-hal-local-target-device-backends=llvm-cpu \
--iree-llvmcpu-target-cpu=generic   \
--iree-llvmcpu-link-embedded=false \
--dump-compilation-phases-to=/tmp/iree/add_lowering \
--output-format=vm-bytecode \
-o add_lowering_vm-bytecode.vmfb

iree-compile add.mlir \
--iree-hal-target-device=local \
--iree-hal-local-target-device-backends=llvm-cpu \
--iree-llvmcpu-target-cpu=generic   \
--iree-llvmcpu-link-embedded=false \
--dump-compilation-phases-to=/tmp/iree/add_lowering \
--output-format=vm-c \
-o add_lowering_vm-c.c

# host
# iree-opt --iree-llvmcpu-list-targets
iree-compile add.mlir \
--iree-hal-target-device=local \
--iree-hal-local-target-device-backends=llvm-cpu \
--iree-llvmcpu-target-cpu=host   \
--iree-llvmcpu-link-embedded=false \
--dump-compilation-phases-to=/tmp/iree/add_lowering \
--output-format=vm-bytecode \
-o add_lowering_vm-bytecode.vmfb
