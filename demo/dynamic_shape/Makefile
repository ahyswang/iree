IREE_COMPILE=`pwd`/../../../iree-build/tools/iree-compile
IREE_RUN_MODULE=`pwd`/../../../iree-build/tools/iree-run-module

dynamic_shape_run:
	${IREE_COMPILE} --iree-hal-target-device=local --iree-hal-local-target-device-backends=llvm-cpu --iree-llvmcpu-target-cpu=generic \
	dynamic_shape.mlir  -o log.vmxv
	${IREE_RUN_MODULE} --module=log.vmxv --input=4xf32=[0,1,2,3] --input=4xf32=[0,10,20,30]

dynamic_shape_run_2:
	${IREE_COMPILE} --iree-hal-target-device=local --iree-hal-local-target-device-backends=llvm-cpu --iree-llvmcpu-target-cpu=generic \
	dynamic_shape.mlir  -o log.vmxv
	${IREE_RUN_MODULE} --module=log.vmxv --input=2xf32=[0,1] --input=2xf32=[0,10]