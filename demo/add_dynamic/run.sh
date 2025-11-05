mkdir -p ./data.ignore/add_dynamic/

# 1. full test.

input_mlir=add.mlir

iree-compile $input_mlir \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=generic   \
  --iree-llvmcpu-link-embedded=false \
  --dump-compilation-phases-to=./data.ignore/add_dynamic/ \
  -o ./data.ignore/add_dynamic/add_dynamic.vmfb


iree-run-module   \
--module=./data.ignore/add_dynamic/add_dynamic.vmfb   \
--device=local-task   \
--function=main    \
--input=10xi32=1 2 3 4 5 6 7 8 9 10 \
--input=10xi32=1 2 3 4 5 6 7 8 9 10 \
--expected_output=10xi32=2 4 6 8 10 12 14 16 18 20

# 2.step test.

arr=("input" "abi" "preprocessing" "global-optimization" "dispatch-creation" "flow" "stream" "executable-sources" "executable-configurations" "executable-targets" "hal" "vm")

for item in "${arr[@]}"
do
    echo "compile-to $item"
    
    save_dir=./data.ignore/add_dynamic_$item/
    mkdir -p $save_dir

    iree-compile $input_mlir \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=llvm-cpu \
    --iree-llvmcpu-target-cpu=generic   \
    --iree-llvmcpu-link-embedded=false \
    --dump-compilation-phases-to=$save_dir \
    -o $save_dir/add_dynamic.vmfb \
    --mlir-print-ir-after-all \
    --mlir-print-ir-after-change \
    --mlir-print-ir-before-all \
    --compile-to=$item > $save_dir/log.txt 2>&1
done