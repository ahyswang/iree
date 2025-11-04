IREE_COMPILE=`pwd`/../../../iree-build/tools/iree-opt
IREE_COMPILE=`pwd`/../../../iree-build/tools/iree-compile
IREE_RUN_MODULE=`pwd`/../../../iree-build/tools/iree-run-module
IREE_BENCHMARK_MODULE=`pwd`/../../../iree-build/tools/iree-benchmark-module
IREE_DIR=`pwd`/../../../iree/


iree-compile add.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/add_lowering \
  -o - \
  --mlir-print-ir-after-all \
  --mlir-print-ir-after-change \
  --mlir-print-ir-before-all \
  --compile-to=flow > log.6.flow.txt 2>&1

iree-compile add.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/add_lowering \
  -o - \
  --mlir-print-ir-after-all \
  --mlir-print-ir-after-change \
  --mlir-print-ir-before-all \
  --compile-to=stream > log.7.stream.txt 2>&1

iree-compile add.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/add_lowering \
  -o - \
  --mlir-print-ir-after-all \
  --mlir-print-ir-after-change \
  --mlir-print-ir-before-all \
  --compile-to=executable-sources > log.8.executable-sources.txt 2>&1

iree-compile add.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/add_lowering \
  -o - \
  --mlir-print-ir-after-all \
  --mlir-print-ir-after-change \
  --mlir-print-ir-before-all \
  --compile-to=executable-configurations > log.9.executable-configurations.txt 2>&1

iree-compile add.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/add_lowering \
  -o - \
  --mlir-print-ir-after-all \
  --mlir-print-ir-after-change \
  --mlir-print-ir-before-all \
  --compile-to=executable-targets > log.10.executable-targets.txt 2>&1

iree-compile add.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/add_lowering \
  -o - \
  --mlir-print-ir-after-all \
  --mlir-print-ir-after-change \
  --mlir-print-ir-before-all \
  --compile-to=hal > log.11.hal.txt 2>&1

iree-compile add.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/add_lowering \
  -o - \
  --mlir-print-ir-after-all \
  --mlir-print-ir-after-change \
  --mlir-print-ir-before-all \
  --compile-to=vm > log.12.vm.txt 2>&1


iree-compile add.mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=/tmp/iree/add_lowering \
  -o - \
  --mlir-print-ir-after-all \
  --mlir-print-ir-after-change \
  --mlir-print-ir-before-all> log.all.txt 2>&1