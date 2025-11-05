# RISC-V 测试说明

本说明文档介绍了如何使用 IREE 和 QEMU 模拟器在 RISC-V 环境中运行测试。

## 测试目标

* 验证 IREE 编译器生成的 RISC-V 目标代码是否能够正确运行。
* 使用 QEMU 模拟 RISC-V 环境，运行生成的 .vmfb 文件。
* 测试简单的张量操作（如 abs 函数）。
