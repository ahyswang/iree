

func.func @ukernel_generic_optional_input(
    %out0: tensor<?xf32>, %out1 : tensor<?x?xf32>,
    %b0: f32, %b1: i64) -> (tensor<?xf32>, tensor<?x?xf32>) {
  %0:2 = iree_codegen.ukernel.generic "foo"
      outs(%out0, %out1 : tensor<?xf32>, tensor<?x?xf32>)
      (%b0, %b1 : f32, i64) -> tensor<?xf32>, tensor<?x?xf32>
  return %0#0, %0#1 : tensor<?xf32>, tensor<?x?xf32>
}