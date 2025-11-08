export PATH=`pwd`/../../build/tools/:$PATH

save_dir=./data.ignore/add_lowering_vulkan/
mkdir -p $save_dir

iree-compile matmul.mlir \
--iree-hal-target-device=vulkan \
--iree-llvmcpu-link-embedded=false \
--dump-compilation-phases-to=$save_dir \
-o $save_dir/add_lowering.vmfb \
--mlir-print-ir-after-all \
--mlir-print-ir-after-change \
--mlir-print-ir-before-all \
> $save_dir/log.txt 2>&1

unzip $save_dir/add_lowering.vmfb -d $save_dir
