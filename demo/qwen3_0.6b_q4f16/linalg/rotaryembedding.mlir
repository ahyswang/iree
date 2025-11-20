// RUN: iree-compile --split-input-file --compile-to=input %s > %t  
// RUN: FileCheck %s < %t

// CHECK-LABEL: test_rotaryembedding_v0

//%sin_cache38 = torch.operator "onnx.RotaryEmbedding"(%input, %position_ids, %cos_cache, %sin_cache) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 


func.func @test_rotaryembedding_v0(
    %input:tensor<?x?x2048xf16>,   // 1024 + 1024 = 16*64 + 16*64
    %position_ids:tensor<?x?xindex>, 
    %cos_cache:tensor<40960x64xf16>, 
    %sin_cache:tensor<40960x64xf16>
) -> tensor<?x?x2048xf16> {

    %cst_0 = arith.constant 0 : index
    %cst_1 = arith.constant 1 : index
    %cst_2 = arith.constant 2 : index
    %cst_64 = arith.constant 64 : index
    %cst_16 =  arith.constant 16 : index
    %cst_2048 =  arith.constant 2048 : index

    %batch_size = tensor.dim %input, %cst_0 : tensor<?x?x2048xf16> 
    %seq_size = tensor.dim %input, %cst_1 : tensor<?x?x2048xf16>

    // even 
    %x_even = tensor.extract_slice %input[0, 0, 0][%batch_size, %seq_size, 1024][1, 1, 2] : tensor<?x?x2048xf16> to tensor<?x?x1024xf16>
    %from_elements_even = tensor.from_elements %batch_size, %seq_size, %cst_16, %cst_64 : tensor<4xindex>
    %reshape_even = tensor.reshape %x_even(%from_elements_even) : (tensor<?x?x1024xf16>, tensor<4xindex>) -> tensor<?x?x16x64xf16>
    // odd
    %x_odd = tensor.extract_slice %input[0, 0, 1][%batch_size, %seq_size, 1024][1, 1, 2] : tensor<?x?x2048xf16> to tensor<?x?x1024xf16>
    %from_elements_odd = tensor.from_elements %batch_size, %seq_size, %cst_16, %cst_64 : tensor<4xindex>
    %reshape_odd = tensor.reshape %x_odd(%from_elements_odd) : (tensor<?x?x1024xf16>, tensor<4xindex>) -> tensor<?x?x16x64xf16>
    // cos
    %collapsed_cos = tensor.collapse_shape %position_ids [[0, 1]] : tensor<?x?xindex> into tensor<?xindex>
    %apply_cos = affine.apply affine_map<()[s0, s1] -> (s0 * s1)>()[%batch_size, %seq_size]
    %empty_cos = tensor.empty(%apply_cos) : tensor<?x64xf16>
    
    %generic_cos = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%collapsed_cos : tensor<?xindex>) outs(%empty_cos : tensor<?x64xf16>) {
    ^bb0(%in: index, %out: f16):
      // Access the inner iteration dimension j
      %17 = linalg.index 1 : index
      %extracted = tensor.extract %cos_cache[%in, %17] : tensor<40960x64xf16>
      linalg.yield %extracted : f16
    } -> tensor<?x64xf16>

    %from_elements_cos = tensor.from_elements %batch_size, %seq_size, %cst_1, %cst_64 : tensor<4xindex>
    %reshape_cos = tensor.reshape %generic_cos(%from_elements_cos) : (tensor<?x64xf16>, tensor<4xindex>) -> tensor<?x?x1x64xf16>

    // sin
    %collapsed_sin = tensor.collapse_shape %position_ids [[0, 1]] : tensor<?x?xindex> into tensor<?xindex>
    %apply_sin = affine.apply affine_map<()[s0, s1] -> (s0 * s1)>()[%batch_size, %seq_size]
    %empty_sin = tensor.empty(%apply_sin) : tensor<?x64xf16>

    %generic_sin = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%collapsed_sin : tensor<?xindex>) outs(%empty_sin : tensor<?x64xf16>) {
    ^bb0(%in: index, %out: f16):
        // Access the inner iteration dimension j
        %17 = linalg.index 1 : index
        %extracted = tensor.extract %sin_cache[%in, %17] : tensor<40960x64xf16>
        linalg.yield %extracted : f16
    } -> tensor<?x64xf16>

    %from_elements_sin = tensor.from_elements %batch_size, %seq_size, %cst_1, %cst_64 : tensor<4xindex>
    %reshape_sin = tensor.reshape %generic_sin(%from_elements_sin) : (tensor<?x64xf16>, tensor<4xindex>) -> tensor<?x?x1x64xf16>

    // x = concat(x_even * cos_pos - x_odd * sin_pos, x_even * sin_pos + x_odd * cos_pos)

    %empty_0 = tensor.empty(%batch_size, %seq_size) : tensor<?x?x16x64xf16>
    %mul_0 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, 1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%reshape_even, %reshape_cos : tensor<?x?x16x64xf16>, tensor<?x?x1x64xf16>) outs(%empty_0 : tensor<?x?x16x64xf16>) {
    ^bb0(%in: f16, %in_0: f16, %out: f16):
      %6 = arith.mulf %in, %in_0 : f16
      linalg.yield %6 : f16
    } -> tensor<?x?x16x64xf16>

    %empty_1 = tensor.empty(%batch_size, %seq_size) : tensor<?x?x16x64xf16>
    %mul_1 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, 1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%reshape_odd, %reshape_sin : tensor<?x?x16x64xf16>, tensor<?x?x1x64xf16>) outs(%empty_0 : tensor<?x?x16x64xf16>) {
    ^bb0(%in: f16, %in_0: f16, %out: f16):
      %6 = arith.mulf %in, %in_0 : f16
      linalg.yield %6 : f16
    } -> tensor<?x?x16x64xf16>

    %empty_2 = tensor.empty(%batch_size, %seq_size) : tensor<?x?x16x64xf16>
    %mul_2 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, 1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%reshape_even, %reshape_sin : tensor<?x?x16x64xf16>, tensor<?x?x1x64xf16>) outs(%empty_0 : tensor<?x?x16x64xf16>) {
    ^bb0(%in: f16, %in_0: f16, %out: f16):
      %6 = arith.mulf %in, %in_0 : f16
      linalg.yield %6 : f16
    } -> tensor<?x?x16x64xf16>

    %empty_3 = tensor.empty(%batch_size, %seq_size) : tensor<?x?x16x64xf16>
    %mul_3 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, 1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%reshape_odd, %reshape_cos : tensor<?x?x16x64xf16>, tensor<?x?x1x64xf16>) outs(%empty_0 : tensor<?x?x16x64xf16>) {
    ^bb0(%in: f16, %in_0: f16, %out: f16):
      %6 = arith.mulf %in, %in_0 : f16
      linalg.yield %6 : f16
    } -> tensor<?x?x16x64xf16>

    %empty_sub = tensor.empty(%batch_size, %seq_size) : tensor<?x?x16x64xf16>
    %sub = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%mul_0, %mul_1 : tensor<?x?x16x64xf16>, tensor<?x?x16x64xf16>) outs(%empty_sub : tensor<?x?x16x64xf16>) {
    ^bb0(%in: f16, %in_0: f16, %out: f16):
      %6 = arith.subf %in, %in_0 : f16
      linalg.yield %6 : f16
    } -> tensor<?x?x16x64xf16>

    %empty_add = tensor.empty(%batch_size, %seq_size) : tensor<?x?x16x64xf16>
    %add = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%mul_2, %mul_3 : tensor<?x?x16x64xf16>, tensor<?x?x16x64xf16>) outs(%empty_sub : tensor<?x?x16x64xf16>) {
    ^bb0(%in: f16, %in_0: f16, %out: f16):
      %6 = arith.addf %in, %in_0 : f16
      linalg.yield %6 : f16
    } -> tensor<?x?x16x64xf16>

    %concat = tensor.concat dim(3) %sub, %add : (tensor<?x?x16x64xf16>, tensor<?x?x16x64xf16>) -> tensor<?x?x16x128xf16>

    %from_elements_concat = tensor.from_elements %batch_size, %seq_size, %cst_2048 : tensor<3xindex>
    %reshape_concat = tensor.reshape %concat(%from_elements_concat) : (tensor<?x?x16x128xf16>, tensor<3xindex>) -> tensor<?x?x2048xf16>

    func.return %reshape_concat:tensor<?x?x2048xf16>
}