#include <llvm-18/llvm/ADT/SmallVector.h>
#include <llvm-18/llvm/Support/raw_ostream.h>
#include <algorithm>
#include "iree/compiler/Dialect/Util/IR/UtilOps.h"
#include "iree/compiler/Dialect/Util/IR/UtilDialect.h"
#include "iree/compiler/Dialect/TensorExt/IR/TensorExtDialect.h"
#include "iree/compiler/Dialect/TensorExt/IR/TensorExtOps.h"
#include "llvm/DebugInfo/Symbolize/SymbolizableModule.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/LogicalResult.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/IR/BuiltinAttributes.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "torch-mlir/Dialect/Torch/IR/TorchDialect.h"
#include "torch-mlir/Dialect/Torch/IR/TorchOps.h"
#include "torch-mlir/Dialect/TorchConversion/IR/TorchConversionOps.h"
#include "torch-mlir/Dialect/TorchConversion/Transforms/Passes.h"

namespace mlir::iree_compiler::TorchInput {

#define GEN_PASS_DEF_CONVERTLINALGTOLINALGEXTPASS
#include "compiler/plugins/input/Torch/InputConversion/Passes.h.inc"

namespace {

class ConvertLinalgAddOp
    : public OpRewritePattern<linalg::GenericOp> {
public:
  using OpRewritePattern::OpRewritePattern;
  LogicalResult matchAndRewrite(linalg::GenericOp op,
                                PatternRewriter &rewriter) const override {
    // Expect an elementwise add: 2 inputs, 1 init (output)
    if (op.getNumDpsInputs() != 2 || op.getNumDpsInits() != 1) {
        return failure();
    }
    // Ensure single-block region
    if (op.getRegion().empty() || op.getRegion().front().empty()){
        return failure();
    }
    Block &block = op.getRegion().front();

    // Terminator should be a linalg.yield with one operand
    auto *term = block.getTerminator();
    auto yieldOp = dyn_cast<linalg::YieldOp>(term);
    if (!yieldOp || yieldOp.getNumOperands() != 1) {
        return failure();
    }
    // The yielded value should be produced by an add (int or float)
    auto yieldedValue = yieldOp.getOperand(0);
    Operation *defOp = yieldedValue.getDefiningOp();
    if (!defOp) {
        return failure();
    }

    if (!(isa<arith::AddFOp>(defOp) || isa<arith::AddIOp>(defOp))) {
        return failure();
    }   

    // The add operands must be block arguments (scalar args) coming from the two inputs
    Value lhs = defOp->getOperand(0);
    Value rhs = defOp->getOperand(1);
    if (!isa<BlockArgument>(lhs) || !isa<BlockArgument>(rhs)) {
        return failure();
    }

    BlockArgument la = dyn_cast<BlockArgument>(lhs);
    BlockArgument ra = dyn_cast<BlockArgument>(rhs);

    auto isInputArg = [&](BlockArgument ba) {
        return (ba.getArgNumber() == 0 || ba.getArgNumber() == 1);
    };
    if (!isInputArg(la) || !isInputArg(ra))
        return failure();

    Value lhsValue = op.getDpsInputOperand(la.getArgNumber())->get();
    Value rhsValue = op.getDpsInputOperand(ra.getArgNumber())->get();
    Value empty = op.getDpsInitOperand(0)->get();

    // Ensure adeclaration for `nebula.add` exists in the module.
    ModuleOp module = op->getParentOfType<ModuleOp>();
    if (!module) {
        return failure();
    } 
    StringRef funcName = "nebula.add";
    auto funcOp = module.lookupSymbol<IREE::Util::FuncOp>(funcName);
    if (!funcOp) {
        OpBuilder::InsertionGuard guard(rewriter);
        Region &moduleBody = module->getRegion(0);
        Block &moduleBlock = moduleBody.front();
        rewriter.setInsertionPointToStart(&moduleBlock);

        // Create the function declaration
        SmallVector<Type> inputTypes = {
            lhsValue.getType(),
            rhsValue.getType(),
            empty.getType()
        };
        SmallVector<Type> resultTypes = {
            op.getResultTypes().front()
        };
        auto funcType = rewriter.getFunctionType(inputTypes, resultTypes);
        funcOp = rewriter.create<IREE::Util::FuncOp> (op.getLoc(), funcName, funcType);
        funcOp.setPrivate();
    }

    // Create the linalg_ext.add operation

    // auto callee = SymbolRefAttr::get(rewriter.getContext(), "nebula.add");

    // SmallVector<Type> resultTypes(op.getResultTypes().begin(),
    //                                 op.getResultTypes().end());
    SmallVector<Value> args = {lhsValue, rhsValue, empty};
    auto callOp = rewriter.create<IREE::Util::CallOp>(op.getLoc(), funcOp, args);

    rewriter.replaceOp(op, callOp.getResults());


    // ////-------
    // // // auto moduleOp = op->getParentOfType<mlir::ModuleOp>();
    // llvm::StringRef funcname = "bindfunc";
    // FunctionType type = FunctionType::get(op.getContext(), 
    //                           TypeRange{operandType}, TypeRange{resultType});
    // IREE::Util::FuncOp funcOp;
    // {
    //   OpBuilder::InsertionGuard guard(rewriter);
    //   mlir::ModuleOp moduleOp = op->getParentOfType<mlir::ModuleOp>();
    //   Region &moduleBody = moduleOp->getRegion(0);
    //   Block &moduleBlock = moduleBody.front();
    //   // 使用rewriter在Module的开头插入新函数
    //   rewriter.setInsertionPointToStart(&moduleBlock);

    //   funcOp = rewriter.create<IREE::Util::FuncOp>(op.getLoc(), funcname, type, nullptr);
    //   funcOp.setPrivate();
    //   //funcOp->setAttr("iree.abi.stub", rewriter.getUnitAttr());
    //   //copyAttr(op, funcOp);
    // }
    // // funcOp.setPublic();
    // auto linalgOp = rewriter.create<IREE::Util::CallOp>(
    //                   loc, funcOp, ValueRange{operand});
    // // auto linalgOp = rewriter.create<func::CallOp>(
    // //                   loc, funcOp, ValueRange{operand});

    // ////-------
    
    return success();
  }
};

}

namespace {

class ConvertLinalgToLinalgExtPass final 
        : public impl::ConvertLinalgToLinalgExtPassBase<ConvertLinalgToLinalgExtPass> {
    void getDependentDialects(DialectRegistry &registry) const override {
        registry.insert<torch::Torch::TorchDialect>();
        registry.insert<IREE::Util::UtilDialect>();
    }

    void runOnOperation() override {
        MLIRContext *context = &getContext();
        RewritePatternSet patterns(context);
        patterns.add<ConvertLinalgAddOp>(context);
        if (failed(applyPatternsGreedily(getOperation(), std::move(patterns))))
            signalPassFailure();
    }
};

}

} // namespace mlir::iree_compiler::TorchInput 
