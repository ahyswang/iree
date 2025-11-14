# test irpa 

iree-create-parameters \
    --data=my.zeroed_param_1=4096xf32 \
    --data=my.zeroed_param_2=2x4096xi16 \
    --data=my.pattern_param_2=8x2xf32=2.1 \
    --output=output_with_storage.irpa

 iree-create-parameters \
    --splat=my.splat_param_1=4096xf32=4.1 \
    --splat=my.splat_param_2=2x4096xi16=123 \
    --output=output_without_storage.irpa

python test_irpa.py

# test safetensors/gguf to irpa conversion

#iree-convert-parameters  --parameters=/workspace/yswang26/llm/Qwen3-0.6B/model.safetensors --output=output.irpa
#iree-convert-parameters --parameters=/workspace/yswang26/llm/Qwen3-0.6B-Q4_0.gguf --output=output.irpa

# test safetensors

python test_safetensors.py
iree-convert-parameters  --parameters=model.safetensors --output=output.irpa
iree-dump-parameters --parameters=output.irpa 
# TODO:support generic file handle IO instead of memory-only.
iree-dump-parameters --parameters=output.irpa  --extract=embedding=embeddubg.bin

# parameters_scoped.mlir
mkdir -p ./data.ignore/

iree-compile \
    --iree-hal-target-device=local \
    --compile-to=vm \
    --dump-compilation-phases-to=./data.ignore/ \
    --mlir-print-ir-after-change \
    --mlir-print-ir-before-all \
    --iree-hal-local-target-device-backends=vmvx parameters_scoped.mlir -o parameters_scoped.vmvx > ./data.ignore/compile_log.txt 2>&1

# iree-run-module --device=local-sync --module=- --function=echo \
#     --parameters=a=./parameters_a.safetensors \
#     --parameters=b=./parameters_b.safetensors \
#     --expected_output=4xi64=0,1,2,3 \
#     --expected_output=4xi64=4,5,6,7 \
#     --expected_output=8xi64=8,9,10,11,12,13,14,15 \
#     --expected_output=8xi64=16,17,18,19,20,21,22,23 < parameters_scoped.vmvx

iree-run-module --device=local-sync --module=- --function=echo \
    --parameters=a=./parameters_a_new.safetensors \
    --parameters=b=./parameters_b_new.safetensors \
    --expected_output=4xi64=0,1,2,3 \
    --expected_output=4xi64=4,5,6,7 \
    --expected_output=8xi64=8,9,10,11,12,13,14,15 \
    --expected_output=8xi64=16,17,18,19,20,21,22,23 < parameters_scoped.vmvx


# parameters_unscoped.mlir

iree-compile \
    --iree-hal-target-device=local \
    --iree-hal-local-target-device-backends=vmvx parameters_unscoped.mlir -o parameters_unscoped.vmvx

# iree-run-module --device=local-sync --module=- --function=echo \
#     --parameters=./parameters_a.safetensors \
#     --parameters=./parameters_b.safetensors \
#     --expected_output=4xi64=0,1,2,3 \
#     --expected_output=4xi64=4,5,6,7 \
#     --expected_output=8xi64=8,9,10,11,12,13,14,15 \
#     --expected_output=8xi64=16,17,18,19,20,21,22,23 < parameters_unscoped.vmvx

iree-run-module --device=local-sync --module=- --function=echo \
    --parameters=./parameters_a_new.safetensors \
    --parameters=./parameters_b_new.safetensors \
    --expected_output=4xi64=0,1,2,3 \
    --expected_output=4xi64=4,5,6,7 \
    --expected_output=8xi64=8,9,10,11,12,13,14,15 \
    --expected_output=8xi64=16,17,18,19,20,21,22,23 < parameters_unscoped.vmvx

# parameters_unscoped.mlir + irpa
iree-convert-parameters  --parameters=parameters_a_new.safetensors --parameters=parameters_b_new.safetensors  --output=parameters_ab_new.irpa
iree-dump-parameters --parameters=parameters_ab_new.irpa 

iree-run-module --device=local-sync --module=- --function=echo \
    --parameters=./parameters_ab_new.irpa  \
    --expected_output=4xi64=0,1,2,3 \
    --expected_output=4xi64=4,5,6,7 \
    --expected_output=8xi64=8,9,10,11,12,13,14,15 \
    --expected_output=8xi64=16,17,18,19,20,21,22,23 < parameters_unscoped.vmvx