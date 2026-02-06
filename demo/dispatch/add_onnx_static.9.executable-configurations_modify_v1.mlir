#config = #iree_codegen.lowering_config<tile_sizes = [[10], [4], [0], [0]]>
#executable_target_system_elf_x86_64 = #hal.executable.target<"llvm-cpu", "system-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, link_embedded = false, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "x86_64-unknown-linux-gnu"}>
#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>
#device_target_local = #hal.device.target<"local", [#executable_target_system_elf_x86_64]> : !hal.device
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main$async_dispatch_0 {
    hal.executable.variant public @system_elf_x86_64 target(#executable_target_system_elf_x86_64) {
      hal.executable.export public @main$async_dispatch_0_elementwise_10_i32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @main$async_dispatch_0_elementwise_10_i32() attributes {translation_info = #translation} {
          %c0 = arith.constant 0 : index
          %0 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<10xi32>>
          %1 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<10xi32>>
          %2 = hal.interface.binding.subspan layout(#pipeline_layout) binding(2) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10xi32>>
          %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0], sizes = [10], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<10xi32>> -> tensor<10xi32>
          %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0], sizes = [10], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<10xi32>> -> tensor<10xi32>
          %5 = tensor.empty() : tensor<10xi32>
          %6 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%3, %4 : tensor<10xi32>, tensor<10xi32>) outs(%5 : tensor<10xi32>) attrs =  {lowering_config = #config} {
          ^bb0(%in: i32, %in_0: i32, %out: i32):
            %7 = arith.subi %in, %in_0 : i32
            %8 = arith.subi %7, %in_0 : i32
            linalg.yield %8 : i32
          } -> tensor<10xi32>
          
          %52 = tensor.empty() : tensor<10xi32>
          %62 = iree_codegen.ukernel.generic "foo" ins(%6, %6: tensor<10xi32>, tensor<10xi32>) outs(%52 : tensor<10xi32>) -> tensor<10xi32>
          
          %51 = tensor.empty() : tensor<10xi32>
          %61 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%62, %6 : tensor<10xi32>, tensor<10xi32>) outs(%51 : tensor<10xi32>) attrs =  {lowering_config = #config} {
          ^bb0(%in: i32, %in_0: i32, %out: i32):
            %71 = arith.addi %in, %in_0 : i32
            linalg.yield %71 : i32
          } -> tensor<10xi32>

          iree_tensor_ext.dispatch.tensor.store %61, %2, offsets = [0], sizes = [10], strides = [1] : tensor<10xi32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10xi32>>
          return
        }
      }
    }
  }
  util.func public @main$async(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.fence, %arg3: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
    %c0 = arith.constant 0 : index
    %c128 = arith.constant 128 : index
    %c64 = arith.constant 64 : index
    %c40 = arith.constant 40 : index
    %c10 = arith.constant 10 : index
    %element_type_i32 = hal.element_type<i32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("tensor") shape([%c10]) type(%element_type_i32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<10xi32> in !stream.resource<external>{%c40}
    %1 = stream.timepoint.import on(#hal.device.affinity<@__device_0>) %arg2 : (!hal.fence) => !stream.timepoint
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("tensor") shape([%c10]) type(%element_type_i32) encoding(%dense_row_major)
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<10xi32> in !stream.resource<external>{%c40}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) await(%1) => !stream.resource<staging>{%c128} => !stream.timepoint
    %3 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg4: !stream.resource<external>{%c40}, %2 as %arg5: !stream.resource<external>{%c40}, %result as %arg6: !stream.resource<staging>{%c128}) {
      stream.cmd.concurrent {
        stream.cmd.copy %arg4[%c0], %arg6[%c0], %c40 : !stream.resource<external>{%c40} -> !stream.resource<staging>{%c128}
        stream.cmd.flush %arg6[%c0 for %c40] : !stream.resource<staging>{%c128}
        stream.cmd.copy %arg5[%c0], %arg6[%c64], %c40 : !stream.resource<external>{%c40} -> !stream.resource<staging>{%c128}
        stream.cmd.flush %arg6[%c64 for %c40] : !stream.resource<staging>{%c128}
      }
    } => !stream.timepoint
    %4 = stream.timepoint.await %3 => %result : !stream.resource<staging>{%c128}
    %5 = stream.resource.subview %4[%c0] : !stream.resource<staging>{%c128} -> !stream.resource<staging>{%c40}
    %6 = stream.resource.subview %4[%c64] : !stream.resource<staging>{%c128} -> !stream.resource<staging>{%c40}
    stream.tensor.trace "main$async_dispatch_0::main$async_dispatch_0_elementwise_10_i32 inputs" = [
      %5 : tensor<10xi32> in !stream.resource<staging>{%c40},
      %6 : tensor<10xi32> in !stream.resource<staging>{%c40}
    ]
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) await(%1) => !stream.resource<external>{%c40} => !stream.timepoint
    %result_2, %result_timepoint_3 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) await(%1) => !stream.resource<staging>{%c40} => !stream.timepoint
    %7 = stream.timepoint.join max(%result_timepoint_1, %result_timepoint_3) => !stream.timepoint
    %8 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%7) => with(%0 as %arg4: !stream.resource<external>{%c40}, %2 as %arg5: !stream.resource<external>{%c40}, %result_0 as %arg6: !stream.resource<external>{%c40}, %result_2 as %arg7: !stream.resource<staging>{%c40}) {
      stream.cmd.dispatch @main$async_dispatch_0::@system_elf_x86_64::@main$async_dispatch_0_elementwise_10_i32 {
        ro %arg4[%c0 for %c40] : !stream.resource<external>{%c40},
        ro %arg5[%c0 for %c40] : !stream.resource<external>{%c40},
        wo %arg6[%c0 for %c40] : !stream.resource<external>{%c40}
      }
      stream.cmd.copy %arg6[%c0], %arg7[%c0], %c40 : !stream.resource<external>{%c40} -> !stream.resource<staging>{%c40}
      stream.cmd.flush %arg7[%c0 for %c40] : !stream.resource<staging>{%c40}
    } => !stream.timepoint
    %9 = stream.timepoint.await %8 => %result_2 : !stream.resource<staging>{%c40}
    stream.tensor.trace "main$async_dispatch_0::main$async_dispatch_0_elementwise_10_i32 outputs" = [
      %9 : tensor<10xi32> in !stream.resource<staging>{%c40}
    ]
    stream.timepoint.chain_external on(#hal.device.affinity<@__device_0>) %8 => (%arg3 : !hal.fence)
    %10 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %result_0 : tensor<10xi32> in !stream.resource<external>{%c40} -> !hal.buffer_view
    util.return %10 : !hal.buffer_view
  }
  util.func public @main(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub} {
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %c0 = arith.constant 0 : index
    %device_0 = hal.devices.get %c0 : !hal.device
    %fence = hal.fence.create device(%device_0 : !hal.device) flags("None") : !hal.fence
    %1 = util.call @main$async(%arg0, %arg1, %0, %fence) : (!hal.buffer_view, !hal.buffer_view, !hal.fence, !hal.fence) -> !hal.buffer_view
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.return %1 : !hal.buffer_view
  }
}
