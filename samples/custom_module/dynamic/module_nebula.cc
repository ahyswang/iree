// Copyright 2023 The IREE Authors
//
// Licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <stdio.h>
#include <cstdint>
#include <cstdio>

#include "iree/base/api.h"
#include "iree/base/config.h"
#include "iree/base/status.h"
#include "iree/base/status_cc.h"
#include "iree/hal/api.h"
#include "iree/hal/buffer.h"
#include "iree/hal/buffer_view.h"
#include "iree/vm/api.h"
#include "iree/vm/dynamic/api.h"
#include "iree/vm/list.h"
#include "iree/vm/native_module_cc.h"
#include "iree/vm/native_module_packing.h"
#include "iree/vm/ref.h"

//===----------------------------------------------------------------------===//
// !custom.string type
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// VM module interface implementation
//===----------------------------------------------------------------------===//
namespace {

    using namespace iree;

    class NebulaTensor
    {
    public:
        explicit NebulaTensor(vm::ref<iree_hal_buffer_view_t> bufferView)
        : bufferView(bufferView)
        {
            makeMapping();
        }

        ~NebulaTensor()
        {
           releaseMapping();
        }
        
        size_t getElementNum() 
        {
            size_t elementNum = 1;
            if (rank > 0) {
                for (size_t i = 0; i < rank; i++) {
                    elementNum *= shape[i];
                }
            }
            return elementNum;
        }
    private:
        
        iree_status_t makeMapping() 
        {
            iree_host_size_t rank = iree_hal_buffer_view_shape_rank(bufferView.get());
            if (rank >= 0) {
                for (iree_host_size_t i = 0; i < rank; ++i) {
                    iree_hal_dim_t dimSize = iree_hal_buffer_view_shape_dim(bufferView.get(), i);
                    this->shape[i] = dimSize;
                }
                this->rank = rank;
            } else {
                this->rank = -1;
            }
            iree_hal_element_type_t dtype = iree_hal_buffer_view_element_type(bufferView.get());
            this->dtype = dtype;

            iree_hal_buffer_t* buffer0 = iree_hal_buffer_view_buffer(bufferView.get());
            iree_device_size_t write_length0 =
                iree_hal_buffer_view_byte_length(bufferView.get());
            
            IREE_RETURN_IF_ERROR(iree_hal_buffer_map_range(
                buffer0, IREE_HAL_MAPPING_MODE_SCOPED, IREE_HAL_MEMORY_ACCESS_READ, 0,
                write_length0, &bufferMapping));
            
            this->ptr = bufferMapping.contents.data;

            return iree_ok_status();
        }

        void releaseMapping()
        {
            IREE_IGNORE_ERROR(iree_hal_buffer_unmap_range(&bufferMapping));
        }

    public:
        void *ptr;
        iree_hal_element_type_t dtype;
        iree_host_size_t rank;
        iree_hal_dim_t   shape[8];

        vm::ref<iree_hal_buffer_view_t> bufferView;
        iree_hal_buffer_mapping_t bufferMapping;

    };
    
    static std::vector<iree_vm_value_t> GetValuesList(iree_vm_list_t* list) {
        std::vector<iree_vm_value_t> result;
        result.resize(iree_vm_list_size(list));
        for (iree_host_size_t i = 0; i < result.size(); ++i) {
            iree_vm_variant_t variant = iree_vm_variant_empty();
            IREE_CHECK_OK(iree_vm_list_get_variant_assign(list, i, &variant));
            if (iree_vm_variant_is_value(variant)) {
            result[i] = iree_vm_variant_value(variant);
            } else if (iree_vm_variant_is_ref(variant)) {
            fprintf(stdout, "Found ref type in list, not handled yet.\n");
            }
        }
        return result;
    }

    class NebulaModuleState final {
    public:
        explicit NebulaModuleState(iree_allocator_t host_allocator)
          : host_allocator_(host_allocator) {}
        ~NebulaModuleState() = default;

        StatusOr<int32_t> AddScale(int32_t lhs, int32_t rhs)
        {
            fprintf(stdout, "CUSTOM ADD SCALE: %d + %d = %d\n", lhs, rhs, lhs + rhs);
            return lhs + rhs;
        }

        StatusOr<int32_t> AddList(vm::ref<iree_vm_list_t> lhs, vm::ref<iree_vm_list_t> rhs)
        {
            iree_host_size_t lhsSize = iree_vm_list_size(lhs.get());
            iree_host_size_t rhsSize = iree_vm_list_size(rhs.get());
            if (lhsSize != rhsSize) {
                return iree_make_status(IREE_STATUS_INVALID_ARGUMENT, "List size not match");
            }
            
            printf("lhs size: %" PRIhsz ", rhs size: %" PRIhsz "\n", lhsSize, rhsSize);
             
            auto lhsValue = GetValuesList(lhs.get());
            auto rhsValue = GetValuesList(rhs.get());

            if (lhsValue.size() == 0 || rhsValue.size() == 0) {
                return iree_make_status(IREE_STATUS_INVALID_ARGUMENT, "List is empty");
            }

            printf("type of first element in lhs: %d, rhs: %d\n", 
                lhsValue[0].type,
                rhsValue[0].type);   

            if (lhsValue[0].type != IREE_VM_VALUE_TYPE_I32 ||
                rhsValue[0].type != IREE_VM_VALUE_TYPE_I32) {
                return iree_make_status(IREE_STATUS_INVALID_ARGUMENT, "Only int32 list is supported");
            }
            if (lhsValue.size() != rhsValue.size()) {
                return iree_make_status(IREE_STATUS_INVALID_ARGUMENT, "List size not match");
            }

            for (size_t i = 0; i < lhsValue.size(); i++) {
                int8_t result = lhsValue[i].i32 + rhsValue[i].i32;
                fprintf(stdout, "  ADD LIST[%" PRIhsz "] = %d + %d = %d\n", i, lhsValue[i].i32, rhsValue[i].i32, result);
            }
            
            return 0;
        }

        StatusOr<vm::ref<iree_hal_buffer_view_t>>
        Add(
            vm::ref<iree_hal_buffer_view_t> buffer_view0, 
            vm::ref<iree_hal_buffer_view_t> buffer_view1,
            vm::ref<iree_hal_buffer_view_t> buffer_view_out) {
            
            NebulaTensor tensor0(buffer_view0);
            NebulaTensor tensor1(buffer_view1);
            NebulaTensor tensor_out(buffer_view_out);

            if (tensor0.rank != 1 || tensor1.rank != 1 || tensor_out.rank != 1) {
                return iree_make_status(IREE_STATUS_INVALID_ARGUMENT,
                                        "Only rank-1 buffers are supported");
            }
            
            if (tensor0.dtype != IREE_HAL_ELEMENT_TYPE_INT_8 || 
                tensor1.dtype != IREE_HAL_ELEMENT_TYPE_INT_8 ||
                tensor_out.dtype != IREE_HAL_ELEMENT_TYPE_INT_8) {
                return iree_make_status(IREE_STATUS_INVALID_ARGUMENT,
                                        "Only int8 buffers are supported");
            }
            if (tensor0.getElementNum() != tensor1.getElementNum() ||
                tensor_out.getElementNum() != tensor1.getElementNum()) {
                return iree_make_status(IREE_STATUS_INVALID_ARGUMENT, "Tensor size not match");
            }
 
            int8_t* data0 = (int8_t*)tensor0.ptr;
            int8_t* data1 = (int8_t*)tensor1.ptr;
            int8_t* data_out = (int8_t*)tensor_out.ptr;

            for (iree_host_size_t i = 0; i < tensor0.getElementNum(); ++i) {
                data_out[i] = data0[i] + data1[i];
                fprintf(stdout, "  ADD[%" PRIhsz "] = %d + %d = %d\n", i, data0[i], data1[i], data_out[i]);
            }
        
            return buffer_view_out;
        }
    
    
    private:
      // Allocator that the caller requested we use for any allocations we need to
      // perform during operation.
      iree_allocator_t host_allocator_;
    };
    
    // Function table mapping imported function names to their implementation.
    static const vm::NativeFunction<NebulaModuleState> kCustomModuleFunctions[] = {
        vm::MakeNativeFunction("add", &NebulaModuleState::Add),
        vm::MakeNativeFunction("add_scalar", &NebulaModuleState::AddScale),
        vm::MakeNativeFunction("add_list", &NebulaModuleState::AddList),
    };
    

    class NebulaModule final : public vm::NativeModule<NebulaModuleState> {
     public:
      using vm::NativeModule<NebulaModuleState>::NativeModule;
    
      ~NebulaModule() override {
        //iree_custom_module_basic_unregister_types(instance());
      }
    
      // Creates per-context state when the module is added to a new context.
      // May be called from any thread.
      StatusOr<std::unique_ptr<NebulaModuleState>> CreateState(
          iree_allocator_t host_allocator) override {
        auto state = std::make_unique<NebulaModuleState>(host_allocator);
        return state;
      }
    
      // Forks a parent state into a child state, preserving any module state
      // by-reference.
      StatusOr<std::unique_ptr<NebulaModuleState>> ForkState(
          NebulaModuleState* parent_state,
          iree_allocator_t host_allocator) override {
        // No special state to preserve.
        return CreateState(host_allocator);
      }
    };
    
}  // namespace


extern "C" IREE_VM_DYNAMIC_MODULE_EXPORT iree_status_t create_nebula_module(
    iree_vm_dynamic_module_version_t max_version, iree_vm_instance_t* instance,
    iree_host_size_t param_count, const iree_string_pair_t* params,
    iree_allocator_t host_allocator, iree_vm_module_t** out_module) {
    // Ensure the version matches; the version will change if the VM module
    // interface changes and existing libraries are incompatible.
    if (max_version != IREE_VM_DYNAMIC_MODULE_VERSION_LATEST) {
    return iree_make_status(
        IREE_STATUS_UNIMPLEMENTED,
        "unsupported runtime version %u, module compiled with version %u",
        max_version, IREE_VM_DYNAMIC_MODULE_VERSION_LATEST);
    }

#if IREE_TRACING_FEATURES
    // Today Tracy cannot be used with custom dynamic modules as it'll try to
    // create a new tracing context distinct from the hosting application. Custom
    // module libraries should be built with tracing disabled.
    fprintf(stderr,
            "Tracy is not currently supported in nebula dynamic modules\n");
#endif  // IREE_TRACING_FEATURES

    // Ensure HAL types are available. We need to do this as we're being
    // dynamically loaded and can't automatically access the hosting process
    // variables.
    //IREE_RETURN_IF_ERROR(iree_hal_module_resolve_all_types(instance));

    // Register custom types used by the module against the instance.
    // Note that this function must be safe to call multiple times as the module
    // may be loaded multiple times.
    //IREE_RETURN_IF_ERROR(iree_custom_module_basic_register_types(instance));

    // Create the custom module and return it to the runtime.
    // NOTE: this isn't using the allocator here and that's bad as it leaves
    // untracked allocations and pulls in the system allocator that may differ
    // from the one requested by the user.
    // TODO(benvanik): std::allocator wrapper around iree_allocator_t so this can
    // use that instead.
    auto module = std::make_unique<NebulaModule>(
        "nebula", /*version=*/0, instance, host_allocator,
        iree::span<const vm::NativeFunction<NebulaModuleState>>(
            kCustomModuleFunctions));
    *out_module = module.release()->interface();
    return iree_ok_status();
}