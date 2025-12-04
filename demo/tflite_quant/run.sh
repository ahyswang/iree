export PATH=`pwd`/../../build/tools/:$PATH
source ../../.venv/bin/activate

WORKDIR="./data.ignore"
mkdir -p ${WORKDIR}

TFLITE_PATH=${WORKDIR}/1.tflite
IMPORT_PATH=${WORKDIR}/tosa.mlir
MODULE_PATH=${WORKDIR}/module.vmfb

# 
python net-tf.py

cp simple_l_quantized.tflite ${WORKDIR}/1.tflite

# Import the model to MLIR (in the TOSA dialect) so IREE can compile it.
iree-import-tflite ${TFLITE_PATH} -o ${IMPORT_PATH}

# Compile for the CPU backend
iree-compile \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=llvm-cpu \
    --iree-llvmcpu-target-cpu=generic   \
    --dump-compilation-phases-to=$WORKDIR \
    ${IMPORT_PATH} \
    -o ${MODULE_PATH} \
    --mlir-print-ir-after-all \
    --mlir-print-ir-after-change \
    --mlir-print-ir-before-all \
    > $WORKDIR/log.txt 2>&1