#include <llvm-18/llvm/ADT/SmallVector.h>
#include <llvm-18/llvm/Support/raw_ostream.h>
#include <algorithm>
#include "iree/compiler/Dialect/TensorExt/IR/TensorExtDialect.h"
#include "iree/compiler/Dialect/TensorExt/IR/TensorExtOps.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "torch-mlir/Dialect/Torch/IR/TorchDialect.h"
#include "torch-mlir/Dialect/Torch/IR/TorchOps.h"
#include "torch-mlir/Dialect/TorchConversion/IR/TorchConversionOps.h"
#include "torch-mlir/Dialect/TorchConversion/Transforms/Passes.h"

namespace mlir::iree_compiler::TorchInput {

#define GEN_PASS_DEF_EXTRACTBINDATTRPASS
#include "compiler/plugins/input/Torch/InputConversion/Passes.h.inc"

namespace {

class CreateCommBindAttr
    : public OpRewritePattern<torch::Torch::OperatorOp> {
public:
  using OpRewritePattern::OpRewritePattern;
  LogicalResult matchAndRewrite(torch::Torch::OperatorOp op,
                                PatternRewriter &rewriter) const override {
    //llvm::outs() << "CreateCommBindAttr Visiting op: " << op.getName() << "\n";        
    if (op->hasAttr("torch.onnx.custom_bind_attr_status")) {
        return failure();
    }

    bool hasCustomAttr = std::any_of(op->getAttrs().begin(), op->getAttrs().end(), [](NamedAttribute attr) {
        StringRef attrName = attr.getName();
        return attrName.starts_with("torch.onnx.custom_");
    });
    if (!hasCustomAttr) {
        return failure();
    }

    rewriter.setInsertionPoint(op);

    if (op.getNumOperands() < 1) {
        return rewriter.notifyMatchFailure(op, "Expected at least one operand");
    }

    Value A = op.getOperand(0);
    auto  bindAType = dyn_cast<torch::Torch::ValueTensorType>(A.getType());
    if (!bindAType) {
        return rewriter.notifyMatchFailure(op, "Expected tensor type for operand A");
    }
    
    // llvm::SmallVector<NamedAttribute> attributes;
    // attributes.push_back(rewriter.getNamedAttr("name", rewriter.getStringAttr("done")));
    // attributes.push_back(rewriter.getNamedAttr("custom_bind_attr_status", rewriter.getStringAttr("done")));

    // for (auto itAttr = op->getAttrs().begin(); itAttr != op->getAttrs().end(); ++itAttr) {
    //     StringRef attrName = itAttr->getName();
    //     if (!attrName.starts_with("torch.onnx.custom_")) {
    //         continue; // Skip custom attributes
    //     }
    //     attributes.push_back(*itAttr);
    // }   

    auto bindA = rewriter.create<torch::Torch::AtenBindAttrOp>(
        op.getLoc(), bindAType, A);
    bindA->setAttr("torch.onnx.custom_bind_attr_status", rewriter.getStringAttr("done"));
    bindA->setAttr("torch.onnx.operator", rewriter.getStringAttr("bind_attr"));
    auto attrs = op->getAttrs();
    for (auto itAttr = attrs.begin(); itAttr != attrs.end(); ++itAttr) {
        StringRef attrName = itAttr->getName();
        if (!attrName.starts_with("torch.onnx.custom_")) {
            continue; // Skip custom attributes
        }
        bindA->setAttr(attrName, itAttr->getValue());
        op->removeAttr(attrName);
    }   

    auto doneAttr = rewriter.getStringAttr("done");
    op->setAttr("custom_bind_attr_status", doneAttr);
    op->setOperand(0, bindA);
    
    //llvm::outs() << "Successfully added custom_bind_attr_status to op: " << op.getName() << "\n";

    return success();
  }
};

}

namespace {

class ExtractBindAttrPass final 
        : public impl::ExtractBindAttrPassBase<ExtractBindAttrPass> {
    void getDependentDialects(DialectRegistry &registry) const override {
        registry.insert<torch::Torch::TorchDialect>();
    }

    void runOnOperation() override {
        MLIRContext *context = &getContext();
        RewritePatternSet patterns(context);
        patterns.add<CreateCommBindAttr>(context);
        if (failed(applyPatternsGreedily(getOperation(), std::move(patterns))))
            signalPassFailure();
    }
};

}

} // namespace mlir::iree_compiler::TorchInput 
