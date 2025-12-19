#ifndef TORCH_CUSTOM_OPS_TD
#define TORCH_CUSTOM_OPS_TD

include "torch-mlir/Dialect/Torch/IR/TorchTypes.td"
include "mlir/IR/BuiltinAttributes.td"
include "mlir/IR/OpAsmInterface.td"
include "mlir/IR/SymbolInterfaces.td"
include "mlir/Interfaces/CastInterfaces.td"
include "mlir/Interfaces/ControlFlowInterfaces.td"
include "mlir/Interfaces/InferTypeOpInterface.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

include "torch-mlir/Dialect/Torch/IR/TorchOps.td" 

def Torch_AtenBindAttrNewOp : Torch_Op<"aten.bind_attr_new", [
    AllowsTypeRefinement,
    HasValueSemantics,
    ReadOnly
  ]> {
  let summary = "Generated op for `aten::bind_attr_new : (Tensor) -> (Tensor)`";
  let arguments = (ins
    AnyTorchTensorType:$self
  );
  let results = (outs
    AnyTorchTensorType:$result
  );
  let hasCustomAssemblyFormat = 1;
  let extraClassDefinition = [{
    ParseResult AtenBindAttrNewOp::parse(OpAsmParser &parser, OperationState &result) {
      return parseDefaultTorchOp(parser, result, 1, 1);
    }
    void AtenBindAttrNewOp::print(OpAsmPrinter &printer) {
      printDefaultTorchOp(printer, *this, 1, 1);
    }
  }];
} 

#endif // TORCH_CUSTOM_OPS_TD