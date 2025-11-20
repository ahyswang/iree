// RUN: iree-compile --split-input-file --compile-to=input %s > %t  
// RUN: FileCheck %s < %t

// CHECK-LABEL: test_rmslayernorm_v0

func.func public @test_rmslayernorm_v0(%arg0: tensor<2x4xf16>, %arg1: tensor<4xf16>) -> tensor<2x4xf16>
{ 
    //cast
    %cast_f32 = tensor.empty() : tensor<2x4xf32>
    %result_f32 = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>, 
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel","parallel"]} 
        ins(%arg0 : tensor<2x4xf16>) outs(%cast_f32 : tensor<2x4xf32>) {
    ^bb0(%in: f16, %out: f32):
      %5 = arith.extf %in : f16 to f32
      linalg.yield %5 : f32
    } -> tensor<2x4xf32>

    %cast1_f32 = tensor.empty() : tensor<4xf32>
    %result1_f32 = linalg.generic {
        indexing_maps = [
            affine_map<(d0)->(d0)>, 
            affine_map<(d0)->(d0)>], 
        iterator_types = ["parallel"]} 
        ins(%arg1 : tensor<4xf16>) outs(%cast1_f32 : tensor<4xf32>) {
    ^bb0(%in: f16, %out: f32):
      %5 = arith.extf %in : f16 to f32
      linalg.yield %5 : f32
    } -> tensor<4xf32>

    //pow 
    %c2_f32 = arith.constant dense<2.0> : tensor<f32>
    %pow_dst = tensor.empty() : tensor<2x4xf32>
    %pow_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0, d1) -> (d0, d1)>, 
            affine_map<(d0, d1) -> ()>, 
            affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} 
            ins(%result_f32, %c2_f32 : tensor<2x4xf32>, tensor<f32>) outs(%pow_dst : tensor<2x4xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %6 = math.powf %in, %in_0 : f32
      linalg.yield %6 : f32
    } -> tensor<2x4xf32>
    //sum
    %cst_0 = arith.constant 0.0 : f32
    %sum_dst = tensor.empty() : tensor<2x1xf32>
    %sum_dst1 = linalg.fill ins(%cst_0:f32) outs(%sum_dst:tensor<2x1xf32>) -> tensor<2x1xf32>
    %sum_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1)->(d0,d1)>,
            affine_map<(d0,d1)->(d0,0)>],
        iterator_types = ["parallel", "reduction"]
    } ins (%pow_result:tensor<2x4xf32>) outs (%sum_dst1:tensor<2x1xf32>) {
    ^bb0(%in:f32, %out: f32):
        %7 = arith.addf %in, %out : f32 
        linalg.yield %7:f32
    } -> tensor<2x1xf32>
    //div 
    %cst_1 = arith.constant 1 : index
    %cst_4 = "tensor.dim"(%pow_dst, %cst_1) : (tensor<2x4xf32>, index) -> index 
    %cst_4_i = arith.index_cast %cst_4 : index to i32
    %cst_4_f = arith.sitofp %cst_4_i : i32 to f32 
    %div_dst = tensor.empty() : tensor<2x1xf32>
    %div_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>, 
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel","parallel"]} 
        ins(%sum_result : tensor<2x1xf32>) outs(%div_dst : tensor<2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %5 = arith.divf %in,%cst_4_f : f32 
      linalg.yield %5 : f32
    } -> tensor<2x1xf32>
    //sqrt
    %cst_eps = arith.constant 0.00000001 : f32
    %sqrt_dst = tensor.empty() : tensor<2x1xf32>
    %sqrt_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>, 
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel","parallel"]} 
        ins(%div_result : tensor<2x1xf32>) outs(%sqrt_dst : tensor<2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %4 = arith.addf %in,%cst_eps : f32
      %5 = math.sqrt %4 : f32 
      linalg.yield %5 : f32
    } -> tensor<2x1xf32>
    //div2
    %div2_dst = tensor.empty() : tensor<2x4xf32>
    %div2_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>,
            affine_map<(d0,d1) -> (d0,0)>,  
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel", "parallel"]} 
        ins(%result_f32, %sqrt_result : tensor<2x4xf32>,tensor<2x1xf32>) outs(%div2_dst : tensor<2x4xf32>) {
    ^bb0(%in: f32, %in1: f32, %out: f32):
      %5 = arith.divf %in,%in1 : f32 
      linalg.yield %5 : f32
    } -> tensor<2x4xf32>
    //mul 
    %mul_dst = tensor.empty() : tensor<2x4xf32>
    %mul_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>,
            affine_map<(d0,d1) -> (d1)>,  
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel", "parallel"]} 
        ins(%div2_result, %result1_f32 : tensor<2x4xf32>,tensor<4xf32>) outs(%mul_dst : tensor<2x4xf32>) {
    ^bb0(%in: f32, %in1: f32, %out: f32):
      %5 = arith.mulf %in,%in1 : f32 
      linalg.yield %5 : f32
    } -> tensor<2x4xf32>
    //cast 
    %cast_f16 = tensor.empty() : tensor<2x4xf16>
    %result_f16 = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>, 
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel","parallel"]} 
        ins(%mul_result : tensor<2x4xf32>) outs(%cast_f16 : tensor<2x4xf16>) {
    ^bb0(%in: f32, %out: f16):
      %5 = arith.truncf %in : f32 to f16
      linalg.yield %5 : f16
    } -> tensor<2x4xf16>

    func.return %result_f16 : tensor<2x4xf16>
  }
  

// CHECK-LABEL: test_rmslayernorm_v1

func.func public @test_rmslayernorm_v1(%arg0: tensor<2x4xf16>, %arg1: tensor<4xf16>) -> (tensor<2x4xf32>, tensor<2x1xf32>, tensor<2x1xf32>, tensor<2x1xf32>,tensor<2x4xf32>, tensor<2x4xf16>)
{ 
    //cast
    %cast_f32 = tensor.empty() : tensor<2x4xf32>
    %result_f32 = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>, 
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel","parallel"]} 
        ins(%arg0 : tensor<2x4xf16>) outs(%cast_f32 : tensor<2x4xf32>) {
    ^bb0(%in: f16, %out: f32):
      %5 = arith.extf %in : f16 to f32
      linalg.yield %5 : f32
    } -> tensor<2x4xf32>

    %cast1_f32 = tensor.empty() : tensor<4xf32>
    %result1_f32 = linalg.generic {
        indexing_maps = [
            affine_map<(d0)->(d0)>, 
            affine_map<(d0)->(d0)>], 
        iterator_types = ["parallel"]} 
        ins(%arg1 : tensor<4xf16>) outs(%cast1_f32 : tensor<4xf32>) {
    ^bb0(%in: f16, %out: f32):
      %5 = arith.extf %in : f16 to f32
      linalg.yield %5 : f32
    } -> tensor<4xf32>

    //pow 
    %c2_f32 = arith.constant dense<2.0> : tensor<f32>
    %pow_dst = tensor.empty() : tensor<2x4xf32>
    %pow_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0, d1) -> (d0, d1)>, 
            affine_map<(d0, d1) -> ()>, 
            affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} 
            ins(%result_f32, %c2_f32 : tensor<2x4xf32>, tensor<f32>) outs(%pow_dst : tensor<2x4xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %6 = math.powf %in, %in_0 : f32
      linalg.yield %6 : f32
    } -> tensor<2x4xf32>
    //sum
    %cst_0 = arith.constant 0.0 : f32
    %sum_dst = tensor.empty() : tensor<2x1xf32>
    %sum_dst1 = linalg.fill ins(%cst_0:f32) outs(%sum_dst:tensor<2x1xf32>) -> tensor<2x1xf32>
    %sum_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1)->(d0,d1)>,
            affine_map<(d0,d1)->(d0,0)>],
        iterator_types = ["parallel", "reduction"]
    } ins (%pow_result:tensor<2x4xf32>) outs (%sum_dst1:tensor<2x1xf32>) {
    ^bb0(%in:f32, %out: f32):
        %7 = arith.addf %in, %out : f32 
        linalg.yield %7:f32
    } -> tensor<2x1xf32>
    //div 
    %cst_1 = arith.constant 1 : index
    %cst_4 = "tensor.dim"(%pow_dst, %cst_1) : (tensor<2x4xf32>, index) -> index 
    %cst_4_i = arith.index_cast %cst_4 : index to i32
    %cst_4_f = arith.sitofp %cst_4_i : i32 to f32 
    %div_dst = tensor.empty() : tensor<2x1xf32>
    %div_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>, 
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel","parallel"]} 
        ins(%sum_result : tensor<2x1xf32>) outs(%div_dst : tensor<2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %5 = arith.divf %in,%cst_4_f : f32 
      linalg.yield %5 : f32
    } -> tensor<2x1xf32>
    //sqrt
    %cst_eps = arith.constant 0.00000001 : f32
    %sqrt_dst = tensor.empty() : tensor<2x1xf32>
    %sqrt_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>, 
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel","parallel"]} 
        ins(%div_result : tensor<2x1xf32>) outs(%sqrt_dst : tensor<2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %4 = arith.addf %in,%cst_eps : f32
      %5 = math.sqrt %4 : f32 
      linalg.yield %5 : f32
    } -> tensor<2x1xf32>
    //div2
    %div2_dst = tensor.empty() : tensor<2x4xf32>
    %div2_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>,
            affine_map<(d0,d1) -> (d0,0)>,  
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel", "parallel"]} 
        ins(%result_f32, %sqrt_result : tensor<2x4xf32>,tensor<2x1xf32>) outs(%div2_dst : tensor<2x4xf32>) {
    ^bb0(%in: f32, %in1: f32, %out: f32):
      %5 = arith.divf %in,%in1 : f32 
      linalg.yield %5 : f32
    } -> tensor<2x4xf32>
    //mul 
    %mul_dst = tensor.empty() : tensor<2x4xf32>
    %mul_result = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>,
            affine_map<(d0,d1) -> (d1)>,  
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel", "parallel"]} 
        ins(%div2_result, %result1_f32 : tensor<2x4xf32>,tensor<4xf32>) outs(%mul_dst : tensor<2x4xf32>) {
    ^bb0(%in: f32, %in1: f32, %out: f32):
      %5 = arith.mulf %in,%in1 : f32 
      linalg.yield %5 : f32
    } -> tensor<2x4xf32>
    //cast 
    %cast_f16 = tensor.empty() : tensor<2x4xf16>
    %result_f16 = linalg.generic {
        indexing_maps = [
            affine_map<(d0,d1) -> (d0,d1)>, 
            affine_map<(d0,d1) -> (d0,d1)>], 
        iterator_types = ["parallel","parallel"]} 
        ins(%mul_result : tensor<2x4xf32>) outs(%cast_f16 : tensor<2x4xf16>) {
    ^bb0(%in: f32, %out: f16):
      %5 = arith.truncf %in : f32 to f16
      linalg.yield %5 : f16
    } -> tensor<2x4xf16>

    func.return %pow_result, %sum_result,%div_result, %sqrt_result, %div2_result, %result_f16 : tensor<2x4xf32>, tensor<2x1xf32>, tensor<2x1xf32>, tensor<2x1xf32>,tensor<2x4xf32>, tensor<2x4xf16>
}
  