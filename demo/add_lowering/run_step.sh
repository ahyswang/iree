IREE_COMPILE=`pwd`/../../../iree-build/tools/iree-opt
IREE_COMPILE=`pwd`/../../../iree-build/tools/iree-compile
IREE_RUN_MODULE=`pwd`/../../../iree-build/tools/iree-run-module
IREE_BENCHMARK_MODULE=`pwd`/../../../iree-build/tools/iree-benchmark-module
IREE_DIR=`pwd`/../../../iree/


arr=("input" "abi" "preprocessing" "global-optimization" "dispatch-creation" "flow" "stream" "executable-sources" "executable-configurations" "executable-targets" "hal" "vm")

for item in "${arr[@]}"
do
    echo "compile-to $item"
    
    save_dir=./data.ignore/add_lowering_$item/
    mkdir -p $save_dir

    iree-compile add.mlir \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=llvm-cpu \
    --iree-llvmcpu-target-cpu=generic   \
    --iree-llvmcpu-link-embedded=false \
    --dump-compilation-phases-to=$save_dir \
    -o $save_dir/add_lowering.vmfb \
    --mlir-print-ir-after-all \
    --mlir-print-ir-after-change \
    --mlir-print-ir-before-all \
    --compile-to=$item > $save_dir/log.txt 2>&1
done