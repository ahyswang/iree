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


$IREE_RUN_MODULE --device="local-task://" \
--module=log.vmbf \
--function=simple_add \
--input="4xf32=0" \
--input="4xf32=0" 


$IREE_BENCHMARK_MODULE --device="local-task://" \
--module=log.vmbf \
--function=simple_add \
--input="4xf32=0" \
--input="4xf32=0" 


exit

# https://zhuanlan.zhihu.com/p/708512905