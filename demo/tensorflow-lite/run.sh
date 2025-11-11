WORKDIR="/tmp/workdir"
mkdir -p ${WORKDIR}
cd ${WORKDIR}

# Fetch a model from https://www.kaggle.com/models/tensorflow/posenet-mobilenet
#TFLITE_URL="https://www.kaggle.com/api/v1/models/tensorflow/posenet-mobilenet/tfLite/float-075/1/download"
#curl -L -o posenet.tar.gz ${TFLITE_URL}
#tar xf posenet.tar.gz

TFLITE_PATH=${WORKDIR}/1.tflite
IMPORT_PATH=${WORKDIR}/tosa.mlir
MODULE_PATH=${WORKDIR}/module.vmfb

# Import the model to MLIR (in the TOSA dialect) so IREE can compile it.
iree-import-tflite ${TFLITE_PATH} -o ${IMPORT_PATH}

# Compile for the CPU backend
iree-compile \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=llvm-cpu \
    --iree-llvmcpu-target-cpu=generic   \
    --dump-compilation-phases-to=$WORKDIR \
    ${IMPORT_PATH} \
    -o ${MODULE_PATH}