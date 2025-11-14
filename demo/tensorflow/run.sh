
export PATH=`pwd`/../../build/tools/:$PATH
source ../../.venv/bin/activate

python add_entry.py

iree-import-tf \
  --tf-import-type=savedmodel_v1 \
  --tf-savedmodel-exported-names=predict \
  ./resaved_model/ -o iree_input.mlir 

../../build/tools/iree-opt iree_input.mlir > iree_input_opt.mlir

iree-compile iree_input_opt.mlir \
--iree-hal-target-device=local \
--iree-hal-local-target-device-backends=llvm-cpu \
--iree-llvmcpu-target-cpu=generic   \
--iree-llvmcpu-link-embedded=false \
-o iree_input_opt.vmfb

# tf.ops
# /workspace/yswang26/iree/.venv/lib/python3.12/site-packages/tensorflow/include/tensorflow/compiler/mlir/tensorflow/ir/tf_all_ops.h.inc