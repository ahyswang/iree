IREE_COMPILE=`pwd`/../../../iree-build/tools/iree-compile
IREE_RUN_MODULE=`pwd`/../../../iree-build/tools/iree-run-module
IREE_BENCHMARK_MODULE=`pwd`/../../../iree-build/tools/iree-benchmark-module
IREE_DIR=`pwd`/../../../iree/

python $IREE_DIR/tests/e2e/matmul/generate_e2e_matmul_tests.py --output_matmul_mlir=matmul.mlir --output_calls_mlir=calls.mlir --lhs_rhs_type=i8 --acc_type i32 --shapes=large

$IREE_COMPILE --iree-hal-target-backends=llvm-cpu --iree-hal-target-device=x86 matmul.mlir \
--mlir-disable-threading \
--mlir-elide-elementsattrs-if-larger=10 \
--mlir-print-ir-after-all \
--mlir-print-ir-after-change \
--mlir-print-ir-before-all -o log.vmbf &> log.txt



$IREE_RUN_MODULE --device="local-task://" \
--module=log.vmbf \
--function=matmul_accumulate_1000x1000xi8_times_1000x1xi8_into_1000x1xi32 \
--input="1000x1000xi8=0" \
--input="1000x1xi8=0" \
--input="1000x1xi32=0"


$IREE_BENCHMARK_MODULE --device="local-task://" \
--module=log.vmbf \
--function=matmul_accumulate_1000x1000xi8_times_1000x1xi8_into_1000x1xi32 \
--input="1000x1000xi8=0" \
--input="1000x1xi8=0" \
--input="1000x1xi32=0"


exit

# https://zhuanlan.zhihu.com/p/708512905