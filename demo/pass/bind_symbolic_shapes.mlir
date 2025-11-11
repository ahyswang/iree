// RUN: iree-opt --pass-pipeline="builtin.module(func.func(torch-iree-bind-symbolic-shapes))" --split-input-file --verify-diagnostics %s | FileCheck %s

func.func @test_demo1(%arg0:!torch.vtensor<[?,?],f32>) {

    %0 = torch.symbolic_int "s0" {min_val = 1, max_val = 1024} : !torch.int
    %1 = torch.symbolic_int "s1" {min_val = 1, max_val = 1024} : !torch.int
    torch.bind_symbolic_shape %arg0, [%0, %1], affine_map<()[s0,s1]->(s0,2*s1)> : !torch.vtensor<[?,?],f32>

    func.return 
}