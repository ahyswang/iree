module {
  util.global private @model.embed_tokens.weight = #stream.parameter.named<"model"::"model.embed_tokens.weight"> : tensor<151936x1024xf16>
  util.global private @model.layers.0.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.0.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.0.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.0.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.0.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.0.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @cos_cache = #stream.parameter.named<"model"::"cos_cache"> : tensor<40960x64xf16>
  util.global private @sin_cache = #stream.parameter.named<"model"::"sin_cache"> : tensor<40960x64xf16>
  util.global private @model.layers.0.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.0.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.1.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.1.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.1.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.1.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.1.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.1.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.1.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.1.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.2.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.2.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.2.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.2.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.2.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.2.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.2.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.2.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.3.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.3.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.3.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.3.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.3.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.3.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.3.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.3.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.4.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.4.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.4.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.4.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.4.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.4.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.4.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.4.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.5.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.5.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.5.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.5.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.5.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.5.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.5.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.5.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.6.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.6.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.6.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.6.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.6.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.6.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.6.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.6.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.7.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.7.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.7.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.7.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.7.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.7.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.7.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.7.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.8.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.8.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.8.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.8.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.8.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.8.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.8.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.8.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.9.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.9.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.9.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.9.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.9.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.9.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.9.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.9.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.10.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.10.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.10.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.10.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.10.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.10.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.10.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.10.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.11.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.11.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.11.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.11.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.11.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.11.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.11.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.11.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.12.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.12.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.12.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.12.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.12.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.12.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.12.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.12.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.13.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.13.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.13.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.13.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.13.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.13.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.13.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.13.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.14.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.14.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.14.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.14.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.14.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.14.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.14.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.14.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.15.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.15.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.15.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.15.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.15.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.15.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.15.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.15.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.16.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.16.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.16.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.16.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.16.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.16.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.16.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.16.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.17.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.17.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.17.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.17.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.17.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.17.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.17.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.17.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.18.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.18.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.18.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.18.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.18.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.18.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.18.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.18.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.19.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.19.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.19.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.19.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.19.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.19.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.19.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.19.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.20.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.20.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.20.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.20.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.20.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.20.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.20.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.20.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.21.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.21.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.21.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.21.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.21.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.21.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.21.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.21.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.22.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.22.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.22.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.22.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.22.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.22.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.22.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.22.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.23.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.23.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.23.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.23.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.23.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.23.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.23.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.23.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.24.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.24.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.24.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.24.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.24.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.24.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.24.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.24.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.25.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.25.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.25.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.25.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.25.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.25.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.25.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.25.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.26.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.26.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.26.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.26.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.26.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.26.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.26.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.26.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.27.input_layernorm.weight = #stream.parameter.named<"model"::"model.layers.27.input_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.27.attn.q_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.27.attn.q_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.27.attn.k_norm.layernorm.weight = #stream.parameter.named<"model"::"model.layers.27.attn.k_norm.layernorm.weight"> : tensor<128xf16>
  util.global private @model.layers.27.post_attention_layernorm.weight = #stream.parameter.named<"model"::"model.layers.27.post_attention_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.28.final_norm_layernorm.weight = #stream.parameter.named<"model"::"model.layers.28.final_norm_layernorm.weight"> : tensor<1024xf16>
  util.global private @model.layers.0.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.0.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.0.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.0.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.0.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.0.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.0.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.0.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.0.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.0.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.0.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.0.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.0.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.0.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.0.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.0.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.0.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.0.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.0.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.0.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.0.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.0.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.0.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.0.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.0.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.0.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.0.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.0.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.1.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.1.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.1.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.1.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.1.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.1.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.1.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.1.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.1.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.1.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.1.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.1.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.1.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.1.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.1.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.1.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.1.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.1.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.1.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.1.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.1.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.1.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.1.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.1.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.1.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.1.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.1.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.1.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.2.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.2.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.2.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.2.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.2.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.2.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.2.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.2.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.2.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.2.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.2.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.2.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.2.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.2.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.2.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.2.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.2.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.2.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.2.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.2.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.2.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.2.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.2.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.2.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.2.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.2.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.2.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.2.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.3.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.3.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.3.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.3.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.3.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.3.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.3.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.3.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.3.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.3.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.3.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.3.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.3.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.3.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.3.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.3.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.3.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.3.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.3.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.3.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.3.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.3.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.3.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.3.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.3.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.3.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.3.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.3.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.4.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.4.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.4.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.4.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.4.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.4.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.4.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.4.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.4.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.4.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.4.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.4.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.4.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.4.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.4.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.4.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.4.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.4.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.4.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.4.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.4.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.4.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.4.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.4.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.4.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.4.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.4.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.4.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.5.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.5.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.5.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.5.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.5.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.5.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.5.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.5.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.5.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.5.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.5.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.5.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.5.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.5.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.5.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.5.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.5.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.5.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.5.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.5.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.5.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.5.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.5.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.5.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.5.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.5.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.5.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.5.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.6.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.6.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.6.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.6.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.6.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.6.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.6.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.6.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.6.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.6.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.6.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.6.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.6.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.6.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.6.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.6.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.6.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.6.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.6.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.6.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.6.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.6.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.6.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.6.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.6.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.6.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.6.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.6.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.7.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.7.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.7.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.7.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.7.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.7.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.7.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.7.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.7.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.7.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.7.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.7.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.7.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.7.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.7.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.7.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.7.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.7.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.7.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.7.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.7.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.7.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.7.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.7.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.7.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.7.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.7.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.7.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.8.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.8.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.8.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.8.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.8.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.8.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.8.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.8.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.8.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.8.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.8.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.8.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.8.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.8.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.8.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.8.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.8.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.8.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.8.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.8.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.8.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.8.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.8.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.8.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.8.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.8.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.8.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.8.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.9.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.9.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.9.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.9.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.9.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.9.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.9.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.9.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.9.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.9.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.9.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.9.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.9.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.9.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.9.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.9.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.9.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.9.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.9.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.9.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.9.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.9.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.9.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.9.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.9.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.9.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.9.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.9.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.10.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.10.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.10.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.10.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.10.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.10.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.10.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.10.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.10.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.10.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.10.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.10.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.10.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.10.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.10.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.10.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.10.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.10.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.10.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.10.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.10.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.10.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.10.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.10.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.10.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.10.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.10.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.10.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.11.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.11.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.11.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.11.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.11.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.11.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.11.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.11.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.11.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.11.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.11.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.11.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.11.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.11.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.11.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.11.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.11.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.11.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.11.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.11.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.11.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.11.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.11.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.11.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.11.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.11.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.11.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.11.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.12.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.12.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.12.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.12.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.12.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.12.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.12.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.12.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.12.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.12.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.12.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.12.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.12.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.12.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.12.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.12.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.12.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.12.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.12.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.12.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.12.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.12.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.12.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.12.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.12.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.12.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.12.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.12.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.13.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.13.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.13.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.13.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.13.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.13.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.13.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.13.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.13.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.13.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.13.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.13.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.13.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.13.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.13.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.13.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.13.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.13.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.13.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.13.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.13.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.13.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.13.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.13.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.13.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.13.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.13.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.13.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.14.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.14.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.14.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.14.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.14.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.14.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.14.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.14.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.14.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.14.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.14.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.14.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.14.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.14.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.14.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.14.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.14.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.14.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.14.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.14.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.14.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.14.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.14.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.14.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.14.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.14.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.14.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.14.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.15.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.15.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.15.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.15.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.15.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.15.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.15.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.15.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.15.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.15.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.15.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.15.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.15.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.15.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.15.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.15.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.15.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.15.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.15.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.15.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.15.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.15.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.15.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.15.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.15.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.15.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.15.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.15.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.16.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.16.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.16.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.16.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.16.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.16.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.16.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.16.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.16.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.16.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.16.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.16.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.16.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.16.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.16.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.16.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.16.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.16.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.16.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.16.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.16.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.16.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.16.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.16.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.16.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.16.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.16.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.16.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.17.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.17.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.17.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.17.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.17.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.17.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.17.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.17.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.17.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.17.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.17.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.17.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.17.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.17.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.17.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.17.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.17.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.17.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.17.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.17.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.17.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.17.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.17.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.17.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.17.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.17.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.17.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.17.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.18.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.18.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.18.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.18.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.18.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.18.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.18.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.18.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.18.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.18.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.18.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.18.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.18.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.18.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.18.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.18.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.18.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.18.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.18.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.18.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.18.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.18.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.18.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.18.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.18.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.18.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.18.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.18.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.19.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.19.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.19.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.19.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.19.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.19.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.19.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.19.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.19.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.19.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.19.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.19.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.19.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.19.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.19.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.19.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.19.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.19.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.19.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.19.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.19.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.19.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.19.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.19.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.19.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.19.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.19.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.19.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.20.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.20.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.20.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.20.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.20.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.20.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.20.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.20.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.20.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.20.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.20.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.20.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.20.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.20.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.20.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.20.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.20.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.20.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.20.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.20.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.20.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.20.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.20.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.20.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.20.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.20.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.20.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.20.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.21.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.21.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.21.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.21.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.21.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.21.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.21.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.21.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.21.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.21.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.21.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.21.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.21.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.21.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.21.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.21.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.21.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.21.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.21.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.21.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.21.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.21.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.21.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.21.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.21.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.21.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.21.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.21.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.22.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.22.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.22.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.22.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.22.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.22.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.22.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.22.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.22.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.22.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.22.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.22.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.22.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.22.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.22.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.22.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.22.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.22.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.22.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.22.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.22.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.22.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.22.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.22.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.22.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.22.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.22.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.22.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.23.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.23.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.23.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.23.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.23.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.23.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.23.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.23.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.23.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.23.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.23.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.23.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.23.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.23.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.23.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.23.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.23.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.23.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.23.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.23.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.23.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.23.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.23.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.23.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.23.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.23.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.23.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.23.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.24.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.24.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.24.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.24.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.24.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.24.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.24.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.24.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.24.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.24.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.24.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.24.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.24.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.24.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.24.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.24.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.24.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.24.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.24.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.24.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.24.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.24.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.24.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.24.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.24.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.24.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.24.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.24.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.25.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.25.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.25.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.25.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.25.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.25.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.25.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.25.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.25.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.25.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.25.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.25.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.25.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.25.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.25.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.25.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.25.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.25.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.25.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.25.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.25.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.25.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.25.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.25.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.25.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.25.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.25.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.25.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.26.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.26.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.26.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.26.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.26.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.26.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.26.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.26.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.26.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.26.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.26.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.26.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.26.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.26.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.26.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.26.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.26.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.26.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.26.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.26.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.26.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.26.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.26.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.26.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.26.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.26.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.26.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.26.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.27.attn.q_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.27.attn.q_proj.MatMul.weight_Q4"> : tensor<2048x32x16xi8>
  util.global private @model.layers.27.attn.q_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.27.attn.q_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.27.attn.k_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.27.attn.k_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.27.attn.k_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.27.attn.k_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.27.attn.v_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.27.attn.v_proj.MatMul.weight_Q4"> : tensor<1024x32x16xi8>
  util.global private @model.layers.27.attn.v_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.27.attn.v_proj.MatMul.weight_scales"> : tensor<32768xf16>
  util.global private @model.layers.27.attn.o_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.27.attn.o_proj.MatMul.weight_Q4"> : tensor<1024x64x16xi8>
  util.global private @model.layers.27.attn.o_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.27.attn.o_proj.MatMul.weight_scales"> : tensor<65536xf16>
  util.global private @model.layers.27.mlp.gate_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.27.mlp.gate_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.27.mlp.gate_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.27.mlp.gate_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.27.mlp.up_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.27.mlp.up_proj.MatMul.weight_Q4"> : tensor<3072x32x16xi8>
  util.global private @model.layers.27.mlp.up_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.27.mlp.up_proj.MatMul.weight_scales"> : tensor<98304xf16>
  util.global private @model.layers.27.mlp.down_proj.MatMul.weight_Q4 = #stream.parameter.named<"model"::"model.layers.27.mlp.down_proj.MatMul.weight_Q4"> : tensor<1024x96x16xi8>
  util.global private @model.layers.27.mlp.down_proj.MatMul.weight_scales = #stream.parameter.named<"model"::"model.layers.27.mlp.down_proj.MatMul.weight_scales"> : tensor<98304xf16>
  func.func @main_graph(%arg0: !torch.vtensor<[?,?],si64>, %arg1: !torch.vtensor<[?,?],si64>, %arg2: !torch.vtensor<[?,?],si64>, %arg3: !torch.vtensor<[?,8,?,128],f16>, %arg4: !torch.vtensor<[?,8,?,128],f16>, %arg5: !torch.vtensor<[?,8,?,128],f16>, %arg6: !torch.vtensor<[?,8,?,128],f16>, %arg7: !torch.vtensor<[?,8,?,128],f16>, %arg8: !torch.vtensor<[?,8,?,128],f16>, %arg9: !torch.vtensor<[?,8,?,128],f16>, %arg10: !torch.vtensor<[?,8,?,128],f16>, %arg11: !torch.vtensor<[?,8,?,128],f16>, %arg12: !torch.vtensor<[?,8,?,128],f16>, %arg13: !torch.vtensor<[?,8,?,128],f16>, %arg14: !torch.vtensor<[?,8,?,128],f16>, %arg15: !torch.vtensor<[?,8,?,128],f16>, %arg16: !torch.vtensor<[?,8,?,128],f16>, %arg17: !torch.vtensor<[?,8,?,128],f16>, %arg18: !torch.vtensor<[?,8,?,128],f16>, %arg19: !torch.vtensor<[?,8,?,128],f16>, %arg20: !torch.vtensor<[?,8,?,128],f16>, %arg21: !torch.vtensor<[?,8,?,128],f16>, %arg22: !torch.vtensor<[?,8,?,128],f16>, %arg23: !torch.vtensor<[?,8,?,128],f16>, %arg24: !torch.vtensor<[?,8,?,128],f16>, %arg25: !torch.vtensor<[?,8,?,128],f16>, %arg26: !torch.vtensor<[?,8,?,128],f16>, %arg27: !torch.vtensor<[?,8,?,128],f16>, %arg28: !torch.vtensor<[?,8,?,128],f16>, %arg29: !torch.vtensor<[?,8,?,128],f16>, %arg30: !torch.vtensor<[?,8,?,128],f16>, %arg31: !torch.vtensor<[?,8,?,128],f16>, %arg32: !torch.vtensor<[?,8,?,128],f16>, %arg33: !torch.vtensor<[?,8,?,128],f16>, %arg34: !torch.vtensor<[?,8,?,128],f16>, %arg35: !torch.vtensor<[?,8,?,128],f16>, %arg36: !torch.vtensor<[?,8,?,128],f16>, %arg37: !torch.vtensor<[?,8,?,128],f16>, %arg38: !torch.vtensor<[?,8,?,128],f16>, %arg39: !torch.vtensor<[?,8,?,128],f16>, %arg40: !torch.vtensor<[?,8,?,128],f16>, %arg41: !torch.vtensor<[?,8,?,128],f16>, %arg42: !torch.vtensor<[?,8,?,128],f16>, %arg43: !torch.vtensor<[?,8,?,128],f16>, %arg44: !torch.vtensor<[?,8,?,128],f16>, %arg45: !torch.vtensor<[?,8,?,128],f16>, %arg46: !torch.vtensor<[?,8,?,128],f16>, %arg47: !torch.vtensor<[?,8,?,128],f16>, %arg48: !torch.vtensor<[?,8,?,128],f16>, %arg49: !torch.vtensor<[?,8,?,128],f16>, %arg50: !torch.vtensor<[?,8,?,128],f16>, %arg51: !torch.vtensor<[?,8,?,128],f16>, %arg52: !torch.vtensor<[?,8,?,128],f16>, %arg53: !torch.vtensor<[?,8,?,128],f16>, %arg54: !torch.vtensor<[?,8,?,128],f16>, %arg55: !torch.vtensor<[?,8,?,128],f16>, %arg56: !torch.vtensor<[?,8,?,128],f16>, %arg57: !torch.vtensor<[?,8,?,128],f16>, %arg58: !torch.vtensor<[?,8,?,128],f16>) -> (!torch.vtensor<[?,?,151936],f32>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 14 : si64, torch.onnx_meta.opset_versions = {com.microsoft = 1 : si64}, torch.onnx_meta.producer_name = "onnxruntime-genai", torch.onnx_meta.producer_version = "0.0.0"} {
    %model.embed_tokens.weight = util.global.load @model.embed_tokens.weight : tensor<151936x1024xf16>
    %0 = torch_c.from_builtin_tensor %model.embed_tokens.weight : tensor<151936x1024xf16> -> !torch.vtensor<[151936,1024],f16>
    %model.layers.0.input_layernorm.weight = util.global.load @model.layers.0.input_layernorm.weight : tensor<1024xf16>
    %1 = torch_c.from_builtin_tensor %model.layers.0.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.0.attn.q_norm.layernorm.weight = util.global.load @model.layers.0.attn.q_norm.layernorm.weight : tensor<128xf16>
    %2 = torch_c.from_builtin_tensor %model.layers.0.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.0.attn.k_norm.layernorm.weight = util.global.load @model.layers.0.attn.k_norm.layernorm.weight : tensor<128xf16>
    %3 = torch_c.from_builtin_tensor %model.layers.0.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %cos_cache = util.global.load @cos_cache : tensor<40960x64xf16>
    %4 = torch_c.from_builtin_tensor %cos_cache : tensor<40960x64xf16> -> !torch.vtensor<[40960,64],f16>
    %sin_cache = util.global.load @sin_cache : tensor<40960x64xf16>
    %5 = torch_c.from_builtin_tensor %sin_cache : tensor<40960x64xf16> -> !torch.vtensor<[40960,64],f16>
    %model.layers.0.post_attention_layernorm.weight = util.global.load @model.layers.0.post_attention_layernorm.weight : tensor<1024xf16>
    %6 = torch_c.from_builtin_tensor %model.layers.0.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.1.input_layernorm.weight = util.global.load @model.layers.1.input_layernorm.weight : tensor<1024xf16>
    %7 = torch_c.from_builtin_tensor %model.layers.1.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.1.attn.q_norm.layernorm.weight = util.global.load @model.layers.1.attn.q_norm.layernorm.weight : tensor<128xf16>
    %8 = torch_c.from_builtin_tensor %model.layers.1.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.1.attn.k_norm.layernorm.weight = util.global.load @model.layers.1.attn.k_norm.layernorm.weight : tensor<128xf16>
    %9 = torch_c.from_builtin_tensor %model.layers.1.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.1.post_attention_layernorm.weight = util.global.load @model.layers.1.post_attention_layernorm.weight : tensor<1024xf16>
    %10 = torch_c.from_builtin_tensor %model.layers.1.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.2.input_layernorm.weight = util.global.load @model.layers.2.input_layernorm.weight : tensor<1024xf16>
    %11 = torch_c.from_builtin_tensor %model.layers.2.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.2.attn.q_norm.layernorm.weight = util.global.load @model.layers.2.attn.q_norm.layernorm.weight : tensor<128xf16>
    %12 = torch_c.from_builtin_tensor %model.layers.2.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.2.attn.k_norm.layernorm.weight = util.global.load @model.layers.2.attn.k_norm.layernorm.weight : tensor<128xf16>
    %13 = torch_c.from_builtin_tensor %model.layers.2.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.2.post_attention_layernorm.weight = util.global.load @model.layers.2.post_attention_layernorm.weight : tensor<1024xf16>
    %14 = torch_c.from_builtin_tensor %model.layers.2.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.3.input_layernorm.weight = util.global.load @model.layers.3.input_layernorm.weight : tensor<1024xf16>
    %15 = torch_c.from_builtin_tensor %model.layers.3.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.3.attn.q_norm.layernorm.weight = util.global.load @model.layers.3.attn.q_norm.layernorm.weight : tensor<128xf16>
    %16 = torch_c.from_builtin_tensor %model.layers.3.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.3.attn.k_norm.layernorm.weight = util.global.load @model.layers.3.attn.k_norm.layernorm.weight : tensor<128xf16>
    %17 = torch_c.from_builtin_tensor %model.layers.3.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.3.post_attention_layernorm.weight = util.global.load @model.layers.3.post_attention_layernorm.weight : tensor<1024xf16>
    %18 = torch_c.from_builtin_tensor %model.layers.3.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.4.input_layernorm.weight = util.global.load @model.layers.4.input_layernorm.weight : tensor<1024xf16>
    %19 = torch_c.from_builtin_tensor %model.layers.4.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.4.attn.q_norm.layernorm.weight = util.global.load @model.layers.4.attn.q_norm.layernorm.weight : tensor<128xf16>
    %20 = torch_c.from_builtin_tensor %model.layers.4.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.4.attn.k_norm.layernorm.weight = util.global.load @model.layers.4.attn.k_norm.layernorm.weight : tensor<128xf16>
    %21 = torch_c.from_builtin_tensor %model.layers.4.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.4.post_attention_layernorm.weight = util.global.load @model.layers.4.post_attention_layernorm.weight : tensor<1024xf16>
    %22 = torch_c.from_builtin_tensor %model.layers.4.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.5.input_layernorm.weight = util.global.load @model.layers.5.input_layernorm.weight : tensor<1024xf16>
    %23 = torch_c.from_builtin_tensor %model.layers.5.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.5.attn.q_norm.layernorm.weight = util.global.load @model.layers.5.attn.q_norm.layernorm.weight : tensor<128xf16>
    %24 = torch_c.from_builtin_tensor %model.layers.5.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.5.attn.k_norm.layernorm.weight = util.global.load @model.layers.5.attn.k_norm.layernorm.weight : tensor<128xf16>
    %25 = torch_c.from_builtin_tensor %model.layers.5.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.5.post_attention_layernorm.weight = util.global.load @model.layers.5.post_attention_layernorm.weight : tensor<1024xf16>
    %26 = torch_c.from_builtin_tensor %model.layers.5.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.6.input_layernorm.weight = util.global.load @model.layers.6.input_layernorm.weight : tensor<1024xf16>
    %27 = torch_c.from_builtin_tensor %model.layers.6.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.6.attn.q_norm.layernorm.weight = util.global.load @model.layers.6.attn.q_norm.layernorm.weight : tensor<128xf16>
    %28 = torch_c.from_builtin_tensor %model.layers.6.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.6.attn.k_norm.layernorm.weight = util.global.load @model.layers.6.attn.k_norm.layernorm.weight : tensor<128xf16>
    %29 = torch_c.from_builtin_tensor %model.layers.6.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.6.post_attention_layernorm.weight = util.global.load @model.layers.6.post_attention_layernorm.weight : tensor<1024xf16>
    %30 = torch_c.from_builtin_tensor %model.layers.6.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.7.input_layernorm.weight = util.global.load @model.layers.7.input_layernorm.weight : tensor<1024xf16>
    %31 = torch_c.from_builtin_tensor %model.layers.7.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.7.attn.q_norm.layernorm.weight = util.global.load @model.layers.7.attn.q_norm.layernorm.weight : tensor<128xf16>
    %32 = torch_c.from_builtin_tensor %model.layers.7.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.7.attn.k_norm.layernorm.weight = util.global.load @model.layers.7.attn.k_norm.layernorm.weight : tensor<128xf16>
    %33 = torch_c.from_builtin_tensor %model.layers.7.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.7.post_attention_layernorm.weight = util.global.load @model.layers.7.post_attention_layernorm.weight : tensor<1024xf16>
    %34 = torch_c.from_builtin_tensor %model.layers.7.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.8.input_layernorm.weight = util.global.load @model.layers.8.input_layernorm.weight : tensor<1024xf16>
    %35 = torch_c.from_builtin_tensor %model.layers.8.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.8.attn.q_norm.layernorm.weight = util.global.load @model.layers.8.attn.q_norm.layernorm.weight : tensor<128xf16>
    %36 = torch_c.from_builtin_tensor %model.layers.8.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.8.attn.k_norm.layernorm.weight = util.global.load @model.layers.8.attn.k_norm.layernorm.weight : tensor<128xf16>
    %37 = torch_c.from_builtin_tensor %model.layers.8.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.8.post_attention_layernorm.weight = util.global.load @model.layers.8.post_attention_layernorm.weight : tensor<1024xf16>
    %38 = torch_c.from_builtin_tensor %model.layers.8.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.9.input_layernorm.weight = util.global.load @model.layers.9.input_layernorm.weight : tensor<1024xf16>
    %39 = torch_c.from_builtin_tensor %model.layers.9.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.9.attn.q_norm.layernorm.weight = util.global.load @model.layers.9.attn.q_norm.layernorm.weight : tensor<128xf16>
    %40 = torch_c.from_builtin_tensor %model.layers.9.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.9.attn.k_norm.layernorm.weight = util.global.load @model.layers.9.attn.k_norm.layernorm.weight : tensor<128xf16>
    %41 = torch_c.from_builtin_tensor %model.layers.9.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.9.post_attention_layernorm.weight = util.global.load @model.layers.9.post_attention_layernorm.weight : tensor<1024xf16>
    %42 = torch_c.from_builtin_tensor %model.layers.9.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.10.input_layernorm.weight = util.global.load @model.layers.10.input_layernorm.weight : tensor<1024xf16>
    %43 = torch_c.from_builtin_tensor %model.layers.10.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.10.attn.q_norm.layernorm.weight = util.global.load @model.layers.10.attn.q_norm.layernorm.weight : tensor<128xf16>
    %44 = torch_c.from_builtin_tensor %model.layers.10.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.10.attn.k_norm.layernorm.weight = util.global.load @model.layers.10.attn.k_norm.layernorm.weight : tensor<128xf16>
    %45 = torch_c.from_builtin_tensor %model.layers.10.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.10.post_attention_layernorm.weight = util.global.load @model.layers.10.post_attention_layernorm.weight : tensor<1024xf16>
    %46 = torch_c.from_builtin_tensor %model.layers.10.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.11.input_layernorm.weight = util.global.load @model.layers.11.input_layernorm.weight : tensor<1024xf16>
    %47 = torch_c.from_builtin_tensor %model.layers.11.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.11.attn.q_norm.layernorm.weight = util.global.load @model.layers.11.attn.q_norm.layernorm.weight : tensor<128xf16>
    %48 = torch_c.from_builtin_tensor %model.layers.11.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.11.attn.k_norm.layernorm.weight = util.global.load @model.layers.11.attn.k_norm.layernorm.weight : tensor<128xf16>
    %49 = torch_c.from_builtin_tensor %model.layers.11.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.11.post_attention_layernorm.weight = util.global.load @model.layers.11.post_attention_layernorm.weight : tensor<1024xf16>
    %50 = torch_c.from_builtin_tensor %model.layers.11.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.12.input_layernorm.weight = util.global.load @model.layers.12.input_layernorm.weight : tensor<1024xf16>
    %51 = torch_c.from_builtin_tensor %model.layers.12.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.12.attn.q_norm.layernorm.weight = util.global.load @model.layers.12.attn.q_norm.layernorm.weight : tensor<128xf16>
    %52 = torch_c.from_builtin_tensor %model.layers.12.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.12.attn.k_norm.layernorm.weight = util.global.load @model.layers.12.attn.k_norm.layernorm.weight : tensor<128xf16>
    %53 = torch_c.from_builtin_tensor %model.layers.12.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.12.post_attention_layernorm.weight = util.global.load @model.layers.12.post_attention_layernorm.weight : tensor<1024xf16>
    %54 = torch_c.from_builtin_tensor %model.layers.12.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.13.input_layernorm.weight = util.global.load @model.layers.13.input_layernorm.weight : tensor<1024xf16>
    %55 = torch_c.from_builtin_tensor %model.layers.13.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.13.attn.q_norm.layernorm.weight = util.global.load @model.layers.13.attn.q_norm.layernorm.weight : tensor<128xf16>
    %56 = torch_c.from_builtin_tensor %model.layers.13.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.13.attn.k_norm.layernorm.weight = util.global.load @model.layers.13.attn.k_norm.layernorm.weight : tensor<128xf16>
    %57 = torch_c.from_builtin_tensor %model.layers.13.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.13.post_attention_layernorm.weight = util.global.load @model.layers.13.post_attention_layernorm.weight : tensor<1024xf16>
    %58 = torch_c.from_builtin_tensor %model.layers.13.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.14.input_layernorm.weight = util.global.load @model.layers.14.input_layernorm.weight : tensor<1024xf16>
    %59 = torch_c.from_builtin_tensor %model.layers.14.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.14.attn.q_norm.layernorm.weight = util.global.load @model.layers.14.attn.q_norm.layernorm.weight : tensor<128xf16>
    %60 = torch_c.from_builtin_tensor %model.layers.14.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.14.attn.k_norm.layernorm.weight = util.global.load @model.layers.14.attn.k_norm.layernorm.weight : tensor<128xf16>
    %61 = torch_c.from_builtin_tensor %model.layers.14.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.14.post_attention_layernorm.weight = util.global.load @model.layers.14.post_attention_layernorm.weight : tensor<1024xf16>
    %62 = torch_c.from_builtin_tensor %model.layers.14.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.15.input_layernorm.weight = util.global.load @model.layers.15.input_layernorm.weight : tensor<1024xf16>
    %63 = torch_c.from_builtin_tensor %model.layers.15.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.15.attn.q_norm.layernorm.weight = util.global.load @model.layers.15.attn.q_norm.layernorm.weight : tensor<128xf16>
    %64 = torch_c.from_builtin_tensor %model.layers.15.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.15.attn.k_norm.layernorm.weight = util.global.load @model.layers.15.attn.k_norm.layernorm.weight : tensor<128xf16>
    %65 = torch_c.from_builtin_tensor %model.layers.15.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.15.post_attention_layernorm.weight = util.global.load @model.layers.15.post_attention_layernorm.weight : tensor<1024xf16>
    %66 = torch_c.from_builtin_tensor %model.layers.15.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.16.input_layernorm.weight = util.global.load @model.layers.16.input_layernorm.weight : tensor<1024xf16>
    %67 = torch_c.from_builtin_tensor %model.layers.16.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.16.attn.q_norm.layernorm.weight = util.global.load @model.layers.16.attn.q_norm.layernorm.weight : tensor<128xf16>
    %68 = torch_c.from_builtin_tensor %model.layers.16.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.16.attn.k_norm.layernorm.weight = util.global.load @model.layers.16.attn.k_norm.layernorm.weight : tensor<128xf16>
    %69 = torch_c.from_builtin_tensor %model.layers.16.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.16.post_attention_layernorm.weight = util.global.load @model.layers.16.post_attention_layernorm.weight : tensor<1024xf16>
    %70 = torch_c.from_builtin_tensor %model.layers.16.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.17.input_layernorm.weight = util.global.load @model.layers.17.input_layernorm.weight : tensor<1024xf16>
    %71 = torch_c.from_builtin_tensor %model.layers.17.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.17.attn.q_norm.layernorm.weight = util.global.load @model.layers.17.attn.q_norm.layernorm.weight : tensor<128xf16>
    %72 = torch_c.from_builtin_tensor %model.layers.17.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.17.attn.k_norm.layernorm.weight = util.global.load @model.layers.17.attn.k_norm.layernorm.weight : tensor<128xf16>
    %73 = torch_c.from_builtin_tensor %model.layers.17.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.17.post_attention_layernorm.weight = util.global.load @model.layers.17.post_attention_layernorm.weight : tensor<1024xf16>
    %74 = torch_c.from_builtin_tensor %model.layers.17.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.18.input_layernorm.weight = util.global.load @model.layers.18.input_layernorm.weight : tensor<1024xf16>
    %75 = torch_c.from_builtin_tensor %model.layers.18.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.18.attn.q_norm.layernorm.weight = util.global.load @model.layers.18.attn.q_norm.layernorm.weight : tensor<128xf16>
    %76 = torch_c.from_builtin_tensor %model.layers.18.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.18.attn.k_norm.layernorm.weight = util.global.load @model.layers.18.attn.k_norm.layernorm.weight : tensor<128xf16>
    %77 = torch_c.from_builtin_tensor %model.layers.18.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.18.post_attention_layernorm.weight = util.global.load @model.layers.18.post_attention_layernorm.weight : tensor<1024xf16>
    %78 = torch_c.from_builtin_tensor %model.layers.18.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.19.input_layernorm.weight = util.global.load @model.layers.19.input_layernorm.weight : tensor<1024xf16>
    %79 = torch_c.from_builtin_tensor %model.layers.19.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.19.attn.q_norm.layernorm.weight = util.global.load @model.layers.19.attn.q_norm.layernorm.weight : tensor<128xf16>
    %80 = torch_c.from_builtin_tensor %model.layers.19.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.19.attn.k_norm.layernorm.weight = util.global.load @model.layers.19.attn.k_norm.layernorm.weight : tensor<128xf16>
    %81 = torch_c.from_builtin_tensor %model.layers.19.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.19.post_attention_layernorm.weight = util.global.load @model.layers.19.post_attention_layernorm.weight : tensor<1024xf16>
    %82 = torch_c.from_builtin_tensor %model.layers.19.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.20.input_layernorm.weight = util.global.load @model.layers.20.input_layernorm.weight : tensor<1024xf16>
    %83 = torch_c.from_builtin_tensor %model.layers.20.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.20.attn.q_norm.layernorm.weight = util.global.load @model.layers.20.attn.q_norm.layernorm.weight : tensor<128xf16>
    %84 = torch_c.from_builtin_tensor %model.layers.20.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.20.attn.k_norm.layernorm.weight = util.global.load @model.layers.20.attn.k_norm.layernorm.weight : tensor<128xf16>
    %85 = torch_c.from_builtin_tensor %model.layers.20.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.20.post_attention_layernorm.weight = util.global.load @model.layers.20.post_attention_layernorm.weight : tensor<1024xf16>
    %86 = torch_c.from_builtin_tensor %model.layers.20.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.21.input_layernorm.weight = util.global.load @model.layers.21.input_layernorm.weight : tensor<1024xf16>
    %87 = torch_c.from_builtin_tensor %model.layers.21.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.21.attn.q_norm.layernorm.weight = util.global.load @model.layers.21.attn.q_norm.layernorm.weight : tensor<128xf16>
    %88 = torch_c.from_builtin_tensor %model.layers.21.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.21.attn.k_norm.layernorm.weight = util.global.load @model.layers.21.attn.k_norm.layernorm.weight : tensor<128xf16>
    %89 = torch_c.from_builtin_tensor %model.layers.21.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.21.post_attention_layernorm.weight = util.global.load @model.layers.21.post_attention_layernorm.weight : tensor<1024xf16>
    %90 = torch_c.from_builtin_tensor %model.layers.21.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.22.input_layernorm.weight = util.global.load @model.layers.22.input_layernorm.weight : tensor<1024xf16>
    %91 = torch_c.from_builtin_tensor %model.layers.22.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.22.attn.q_norm.layernorm.weight = util.global.load @model.layers.22.attn.q_norm.layernorm.weight : tensor<128xf16>
    %92 = torch_c.from_builtin_tensor %model.layers.22.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.22.attn.k_norm.layernorm.weight = util.global.load @model.layers.22.attn.k_norm.layernorm.weight : tensor<128xf16>
    %93 = torch_c.from_builtin_tensor %model.layers.22.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.22.post_attention_layernorm.weight = util.global.load @model.layers.22.post_attention_layernorm.weight : tensor<1024xf16>
    %94 = torch_c.from_builtin_tensor %model.layers.22.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.23.input_layernorm.weight = util.global.load @model.layers.23.input_layernorm.weight : tensor<1024xf16>
    %95 = torch_c.from_builtin_tensor %model.layers.23.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.23.attn.q_norm.layernorm.weight = util.global.load @model.layers.23.attn.q_norm.layernorm.weight : tensor<128xf16>
    %96 = torch_c.from_builtin_tensor %model.layers.23.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.23.attn.k_norm.layernorm.weight = util.global.load @model.layers.23.attn.k_norm.layernorm.weight : tensor<128xf16>
    %97 = torch_c.from_builtin_tensor %model.layers.23.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.23.post_attention_layernorm.weight = util.global.load @model.layers.23.post_attention_layernorm.weight : tensor<1024xf16>
    %98 = torch_c.from_builtin_tensor %model.layers.23.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.24.input_layernorm.weight = util.global.load @model.layers.24.input_layernorm.weight : tensor<1024xf16>
    %99 = torch_c.from_builtin_tensor %model.layers.24.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.24.attn.q_norm.layernorm.weight = util.global.load @model.layers.24.attn.q_norm.layernorm.weight : tensor<128xf16>
    %100 = torch_c.from_builtin_tensor %model.layers.24.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.24.attn.k_norm.layernorm.weight = util.global.load @model.layers.24.attn.k_norm.layernorm.weight : tensor<128xf16>
    %101 = torch_c.from_builtin_tensor %model.layers.24.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.24.post_attention_layernorm.weight = util.global.load @model.layers.24.post_attention_layernorm.weight : tensor<1024xf16>
    %102 = torch_c.from_builtin_tensor %model.layers.24.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.25.input_layernorm.weight = util.global.load @model.layers.25.input_layernorm.weight : tensor<1024xf16>
    %103 = torch_c.from_builtin_tensor %model.layers.25.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.25.attn.q_norm.layernorm.weight = util.global.load @model.layers.25.attn.q_norm.layernorm.weight : tensor<128xf16>
    %104 = torch_c.from_builtin_tensor %model.layers.25.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.25.attn.k_norm.layernorm.weight = util.global.load @model.layers.25.attn.k_norm.layernorm.weight : tensor<128xf16>
    %105 = torch_c.from_builtin_tensor %model.layers.25.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.25.post_attention_layernorm.weight = util.global.load @model.layers.25.post_attention_layernorm.weight : tensor<1024xf16>
    %106 = torch_c.from_builtin_tensor %model.layers.25.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.26.input_layernorm.weight = util.global.load @model.layers.26.input_layernorm.weight : tensor<1024xf16>
    %107 = torch_c.from_builtin_tensor %model.layers.26.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.26.attn.q_norm.layernorm.weight = util.global.load @model.layers.26.attn.q_norm.layernorm.weight : tensor<128xf16>
    %108 = torch_c.from_builtin_tensor %model.layers.26.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.26.attn.k_norm.layernorm.weight = util.global.load @model.layers.26.attn.k_norm.layernorm.weight : tensor<128xf16>
    %109 = torch_c.from_builtin_tensor %model.layers.26.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.26.post_attention_layernorm.weight = util.global.load @model.layers.26.post_attention_layernorm.weight : tensor<1024xf16>
    %110 = torch_c.from_builtin_tensor %model.layers.26.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.27.input_layernorm.weight = util.global.load @model.layers.27.input_layernorm.weight : tensor<1024xf16>
    %111 = torch_c.from_builtin_tensor %model.layers.27.input_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.27.attn.q_norm.layernorm.weight = util.global.load @model.layers.27.attn.q_norm.layernorm.weight : tensor<128xf16>
    %112 = torch_c.from_builtin_tensor %model.layers.27.attn.q_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.27.attn.k_norm.layernorm.weight = util.global.load @model.layers.27.attn.k_norm.layernorm.weight : tensor<128xf16>
    %113 = torch_c.from_builtin_tensor %model.layers.27.attn.k_norm.layernorm.weight : tensor<128xf16> -> !torch.vtensor<[128],f16>
    %model.layers.27.post_attention_layernorm.weight = util.global.load @model.layers.27.post_attention_layernorm.weight : tensor<1024xf16>
    %114 = torch_c.from_builtin_tensor %model.layers.27.post_attention_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.28.final_norm_layernorm.weight = util.global.load @model.layers.28.final_norm_layernorm.weight : tensor<1024xf16>
    %115 = torch_c.from_builtin_tensor %model.layers.28.final_norm_layernorm.weight : tensor<1024xf16> -> !torch.vtensor<[1024],f16>
    %model.layers.0.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.0.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %116 = torch_c.from_builtin_tensor %model.layers.0.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.0.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.0.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %117 = torch_c.from_builtin_tensor %model.layers.0.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.0.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.0.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %118 = torch_c.from_builtin_tensor %model.layers.0.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.0.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.0.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %119 = torch_c.from_builtin_tensor %model.layers.0.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.0.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.0.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %120 = torch_c.from_builtin_tensor %model.layers.0.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.0.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.0.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %121 = torch_c.from_builtin_tensor %model.layers.0.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.0.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.0.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %122 = torch_c.from_builtin_tensor %model.layers.0.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.0.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.0.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %123 = torch_c.from_builtin_tensor %model.layers.0.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.0.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.0.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %124 = torch_c.from_builtin_tensor %model.layers.0.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.0.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.0.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %125 = torch_c.from_builtin_tensor %model.layers.0.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.0.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.0.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %126 = torch_c.from_builtin_tensor %model.layers.0.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.0.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.0.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %127 = torch_c.from_builtin_tensor %model.layers.0.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.0.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.0.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %128 = torch_c.from_builtin_tensor %model.layers.0.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.0.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.0.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %129 = torch_c.from_builtin_tensor %model.layers.0.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.1.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.1.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %130 = torch_c.from_builtin_tensor %model.layers.1.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.1.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.1.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %131 = torch_c.from_builtin_tensor %model.layers.1.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.1.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.1.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %132 = torch_c.from_builtin_tensor %model.layers.1.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.1.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.1.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %133 = torch_c.from_builtin_tensor %model.layers.1.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.1.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.1.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %134 = torch_c.from_builtin_tensor %model.layers.1.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.1.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.1.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %135 = torch_c.from_builtin_tensor %model.layers.1.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.1.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.1.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %136 = torch_c.from_builtin_tensor %model.layers.1.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.1.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.1.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %137 = torch_c.from_builtin_tensor %model.layers.1.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.1.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.1.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %138 = torch_c.from_builtin_tensor %model.layers.1.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.1.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.1.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %139 = torch_c.from_builtin_tensor %model.layers.1.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.1.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.1.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %140 = torch_c.from_builtin_tensor %model.layers.1.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.1.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.1.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %141 = torch_c.from_builtin_tensor %model.layers.1.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.1.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.1.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %142 = torch_c.from_builtin_tensor %model.layers.1.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.1.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.1.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %143 = torch_c.from_builtin_tensor %model.layers.1.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.2.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.2.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %144 = torch_c.from_builtin_tensor %model.layers.2.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.2.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.2.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %145 = torch_c.from_builtin_tensor %model.layers.2.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.2.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.2.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %146 = torch_c.from_builtin_tensor %model.layers.2.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.2.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.2.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %147 = torch_c.from_builtin_tensor %model.layers.2.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.2.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.2.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %148 = torch_c.from_builtin_tensor %model.layers.2.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.2.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.2.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %149 = torch_c.from_builtin_tensor %model.layers.2.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.2.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.2.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %150 = torch_c.from_builtin_tensor %model.layers.2.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.2.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.2.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %151 = torch_c.from_builtin_tensor %model.layers.2.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.2.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.2.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %152 = torch_c.from_builtin_tensor %model.layers.2.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.2.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.2.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %153 = torch_c.from_builtin_tensor %model.layers.2.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.2.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.2.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %154 = torch_c.from_builtin_tensor %model.layers.2.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.2.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.2.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %155 = torch_c.from_builtin_tensor %model.layers.2.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.2.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.2.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %156 = torch_c.from_builtin_tensor %model.layers.2.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.2.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.2.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %157 = torch_c.from_builtin_tensor %model.layers.2.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.3.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.3.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %158 = torch_c.from_builtin_tensor %model.layers.3.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.3.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.3.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %159 = torch_c.from_builtin_tensor %model.layers.3.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.3.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.3.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %160 = torch_c.from_builtin_tensor %model.layers.3.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.3.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.3.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %161 = torch_c.from_builtin_tensor %model.layers.3.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.3.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.3.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %162 = torch_c.from_builtin_tensor %model.layers.3.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.3.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.3.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %163 = torch_c.from_builtin_tensor %model.layers.3.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.3.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.3.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %164 = torch_c.from_builtin_tensor %model.layers.3.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.3.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.3.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %165 = torch_c.from_builtin_tensor %model.layers.3.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.3.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.3.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %166 = torch_c.from_builtin_tensor %model.layers.3.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.3.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.3.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %167 = torch_c.from_builtin_tensor %model.layers.3.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.3.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.3.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %168 = torch_c.from_builtin_tensor %model.layers.3.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.3.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.3.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %169 = torch_c.from_builtin_tensor %model.layers.3.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.3.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.3.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %170 = torch_c.from_builtin_tensor %model.layers.3.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.3.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.3.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %171 = torch_c.from_builtin_tensor %model.layers.3.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.4.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.4.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %172 = torch_c.from_builtin_tensor %model.layers.4.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.4.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.4.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %173 = torch_c.from_builtin_tensor %model.layers.4.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.4.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.4.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %174 = torch_c.from_builtin_tensor %model.layers.4.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.4.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.4.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %175 = torch_c.from_builtin_tensor %model.layers.4.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.4.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.4.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %176 = torch_c.from_builtin_tensor %model.layers.4.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.4.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.4.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %177 = torch_c.from_builtin_tensor %model.layers.4.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.4.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.4.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %178 = torch_c.from_builtin_tensor %model.layers.4.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.4.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.4.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %179 = torch_c.from_builtin_tensor %model.layers.4.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.4.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.4.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %180 = torch_c.from_builtin_tensor %model.layers.4.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.4.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.4.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %181 = torch_c.from_builtin_tensor %model.layers.4.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.4.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.4.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %182 = torch_c.from_builtin_tensor %model.layers.4.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.4.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.4.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %183 = torch_c.from_builtin_tensor %model.layers.4.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.4.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.4.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %184 = torch_c.from_builtin_tensor %model.layers.4.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.4.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.4.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %185 = torch_c.from_builtin_tensor %model.layers.4.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.5.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.5.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %186 = torch_c.from_builtin_tensor %model.layers.5.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.5.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.5.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %187 = torch_c.from_builtin_tensor %model.layers.5.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.5.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.5.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %188 = torch_c.from_builtin_tensor %model.layers.5.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.5.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.5.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %189 = torch_c.from_builtin_tensor %model.layers.5.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.5.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.5.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %190 = torch_c.from_builtin_tensor %model.layers.5.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.5.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.5.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %191 = torch_c.from_builtin_tensor %model.layers.5.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.5.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.5.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %192 = torch_c.from_builtin_tensor %model.layers.5.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.5.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.5.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %193 = torch_c.from_builtin_tensor %model.layers.5.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.5.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.5.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %194 = torch_c.from_builtin_tensor %model.layers.5.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.5.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.5.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %195 = torch_c.from_builtin_tensor %model.layers.5.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.5.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.5.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %196 = torch_c.from_builtin_tensor %model.layers.5.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.5.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.5.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %197 = torch_c.from_builtin_tensor %model.layers.5.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.5.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.5.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %198 = torch_c.from_builtin_tensor %model.layers.5.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.5.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.5.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %199 = torch_c.from_builtin_tensor %model.layers.5.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.6.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.6.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %200 = torch_c.from_builtin_tensor %model.layers.6.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.6.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.6.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %201 = torch_c.from_builtin_tensor %model.layers.6.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.6.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.6.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %202 = torch_c.from_builtin_tensor %model.layers.6.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.6.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.6.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %203 = torch_c.from_builtin_tensor %model.layers.6.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.6.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.6.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %204 = torch_c.from_builtin_tensor %model.layers.6.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.6.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.6.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %205 = torch_c.from_builtin_tensor %model.layers.6.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.6.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.6.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %206 = torch_c.from_builtin_tensor %model.layers.6.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.6.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.6.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %207 = torch_c.from_builtin_tensor %model.layers.6.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.6.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.6.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %208 = torch_c.from_builtin_tensor %model.layers.6.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.6.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.6.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %209 = torch_c.from_builtin_tensor %model.layers.6.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.6.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.6.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %210 = torch_c.from_builtin_tensor %model.layers.6.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.6.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.6.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %211 = torch_c.from_builtin_tensor %model.layers.6.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.6.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.6.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %212 = torch_c.from_builtin_tensor %model.layers.6.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.6.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.6.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %213 = torch_c.from_builtin_tensor %model.layers.6.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.7.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.7.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %214 = torch_c.from_builtin_tensor %model.layers.7.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.7.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.7.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %215 = torch_c.from_builtin_tensor %model.layers.7.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.7.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.7.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %216 = torch_c.from_builtin_tensor %model.layers.7.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.7.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.7.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %217 = torch_c.from_builtin_tensor %model.layers.7.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.7.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.7.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %218 = torch_c.from_builtin_tensor %model.layers.7.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.7.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.7.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %219 = torch_c.from_builtin_tensor %model.layers.7.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.7.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.7.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %220 = torch_c.from_builtin_tensor %model.layers.7.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.7.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.7.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %221 = torch_c.from_builtin_tensor %model.layers.7.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.7.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.7.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %222 = torch_c.from_builtin_tensor %model.layers.7.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.7.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.7.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %223 = torch_c.from_builtin_tensor %model.layers.7.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.7.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.7.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %224 = torch_c.from_builtin_tensor %model.layers.7.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.7.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.7.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %225 = torch_c.from_builtin_tensor %model.layers.7.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.7.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.7.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %226 = torch_c.from_builtin_tensor %model.layers.7.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.7.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.7.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %227 = torch_c.from_builtin_tensor %model.layers.7.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.8.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.8.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %228 = torch_c.from_builtin_tensor %model.layers.8.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.8.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.8.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %229 = torch_c.from_builtin_tensor %model.layers.8.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.8.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.8.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %230 = torch_c.from_builtin_tensor %model.layers.8.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.8.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.8.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %231 = torch_c.from_builtin_tensor %model.layers.8.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.8.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.8.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %232 = torch_c.from_builtin_tensor %model.layers.8.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.8.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.8.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %233 = torch_c.from_builtin_tensor %model.layers.8.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.8.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.8.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %234 = torch_c.from_builtin_tensor %model.layers.8.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.8.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.8.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %235 = torch_c.from_builtin_tensor %model.layers.8.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.8.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.8.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %236 = torch_c.from_builtin_tensor %model.layers.8.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.8.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.8.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %237 = torch_c.from_builtin_tensor %model.layers.8.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.8.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.8.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %238 = torch_c.from_builtin_tensor %model.layers.8.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.8.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.8.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %239 = torch_c.from_builtin_tensor %model.layers.8.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.8.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.8.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %240 = torch_c.from_builtin_tensor %model.layers.8.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.8.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.8.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %241 = torch_c.from_builtin_tensor %model.layers.8.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.9.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.9.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %242 = torch_c.from_builtin_tensor %model.layers.9.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.9.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.9.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %243 = torch_c.from_builtin_tensor %model.layers.9.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.9.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.9.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %244 = torch_c.from_builtin_tensor %model.layers.9.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.9.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.9.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %245 = torch_c.from_builtin_tensor %model.layers.9.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.9.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.9.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %246 = torch_c.from_builtin_tensor %model.layers.9.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.9.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.9.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %247 = torch_c.from_builtin_tensor %model.layers.9.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.9.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.9.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %248 = torch_c.from_builtin_tensor %model.layers.9.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.9.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.9.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %249 = torch_c.from_builtin_tensor %model.layers.9.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.9.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.9.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %250 = torch_c.from_builtin_tensor %model.layers.9.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.9.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.9.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %251 = torch_c.from_builtin_tensor %model.layers.9.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.9.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.9.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %252 = torch_c.from_builtin_tensor %model.layers.9.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.9.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.9.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %253 = torch_c.from_builtin_tensor %model.layers.9.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.9.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.9.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %254 = torch_c.from_builtin_tensor %model.layers.9.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.9.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.9.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %255 = torch_c.from_builtin_tensor %model.layers.9.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.10.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.10.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %256 = torch_c.from_builtin_tensor %model.layers.10.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.10.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.10.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %257 = torch_c.from_builtin_tensor %model.layers.10.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.10.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.10.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %258 = torch_c.from_builtin_tensor %model.layers.10.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.10.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.10.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %259 = torch_c.from_builtin_tensor %model.layers.10.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.10.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.10.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %260 = torch_c.from_builtin_tensor %model.layers.10.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.10.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.10.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %261 = torch_c.from_builtin_tensor %model.layers.10.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.10.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.10.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %262 = torch_c.from_builtin_tensor %model.layers.10.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.10.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.10.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %263 = torch_c.from_builtin_tensor %model.layers.10.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.10.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.10.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %264 = torch_c.from_builtin_tensor %model.layers.10.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.10.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.10.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %265 = torch_c.from_builtin_tensor %model.layers.10.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.10.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.10.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %266 = torch_c.from_builtin_tensor %model.layers.10.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.10.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.10.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %267 = torch_c.from_builtin_tensor %model.layers.10.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.10.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.10.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %268 = torch_c.from_builtin_tensor %model.layers.10.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.10.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.10.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %269 = torch_c.from_builtin_tensor %model.layers.10.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.11.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.11.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %270 = torch_c.from_builtin_tensor %model.layers.11.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.11.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.11.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %271 = torch_c.from_builtin_tensor %model.layers.11.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.11.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.11.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %272 = torch_c.from_builtin_tensor %model.layers.11.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.11.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.11.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %273 = torch_c.from_builtin_tensor %model.layers.11.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.11.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.11.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %274 = torch_c.from_builtin_tensor %model.layers.11.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.11.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.11.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %275 = torch_c.from_builtin_tensor %model.layers.11.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.11.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.11.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %276 = torch_c.from_builtin_tensor %model.layers.11.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.11.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.11.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %277 = torch_c.from_builtin_tensor %model.layers.11.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.11.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.11.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %278 = torch_c.from_builtin_tensor %model.layers.11.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.11.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.11.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %279 = torch_c.from_builtin_tensor %model.layers.11.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.11.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.11.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %280 = torch_c.from_builtin_tensor %model.layers.11.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.11.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.11.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %281 = torch_c.from_builtin_tensor %model.layers.11.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.11.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.11.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %282 = torch_c.from_builtin_tensor %model.layers.11.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.11.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.11.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %283 = torch_c.from_builtin_tensor %model.layers.11.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.12.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.12.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %284 = torch_c.from_builtin_tensor %model.layers.12.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.12.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.12.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %285 = torch_c.from_builtin_tensor %model.layers.12.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.12.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.12.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %286 = torch_c.from_builtin_tensor %model.layers.12.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.12.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.12.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %287 = torch_c.from_builtin_tensor %model.layers.12.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.12.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.12.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %288 = torch_c.from_builtin_tensor %model.layers.12.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.12.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.12.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %289 = torch_c.from_builtin_tensor %model.layers.12.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.12.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.12.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %290 = torch_c.from_builtin_tensor %model.layers.12.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.12.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.12.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %291 = torch_c.from_builtin_tensor %model.layers.12.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.12.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.12.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %292 = torch_c.from_builtin_tensor %model.layers.12.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.12.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.12.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %293 = torch_c.from_builtin_tensor %model.layers.12.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.12.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.12.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %294 = torch_c.from_builtin_tensor %model.layers.12.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.12.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.12.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %295 = torch_c.from_builtin_tensor %model.layers.12.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.12.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.12.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %296 = torch_c.from_builtin_tensor %model.layers.12.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.12.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.12.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %297 = torch_c.from_builtin_tensor %model.layers.12.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.13.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.13.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %298 = torch_c.from_builtin_tensor %model.layers.13.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.13.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.13.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %299 = torch_c.from_builtin_tensor %model.layers.13.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.13.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.13.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %300 = torch_c.from_builtin_tensor %model.layers.13.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.13.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.13.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %301 = torch_c.from_builtin_tensor %model.layers.13.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.13.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.13.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %302 = torch_c.from_builtin_tensor %model.layers.13.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.13.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.13.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %303 = torch_c.from_builtin_tensor %model.layers.13.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.13.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.13.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %304 = torch_c.from_builtin_tensor %model.layers.13.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.13.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.13.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %305 = torch_c.from_builtin_tensor %model.layers.13.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.13.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.13.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %306 = torch_c.from_builtin_tensor %model.layers.13.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.13.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.13.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %307 = torch_c.from_builtin_tensor %model.layers.13.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.13.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.13.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %308 = torch_c.from_builtin_tensor %model.layers.13.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.13.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.13.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %309 = torch_c.from_builtin_tensor %model.layers.13.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.13.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.13.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %310 = torch_c.from_builtin_tensor %model.layers.13.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.13.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.13.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %311 = torch_c.from_builtin_tensor %model.layers.13.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.14.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.14.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %312 = torch_c.from_builtin_tensor %model.layers.14.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.14.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.14.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %313 = torch_c.from_builtin_tensor %model.layers.14.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.14.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.14.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %314 = torch_c.from_builtin_tensor %model.layers.14.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.14.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.14.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %315 = torch_c.from_builtin_tensor %model.layers.14.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.14.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.14.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %316 = torch_c.from_builtin_tensor %model.layers.14.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.14.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.14.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %317 = torch_c.from_builtin_tensor %model.layers.14.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.14.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.14.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %318 = torch_c.from_builtin_tensor %model.layers.14.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.14.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.14.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %319 = torch_c.from_builtin_tensor %model.layers.14.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.14.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.14.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %320 = torch_c.from_builtin_tensor %model.layers.14.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.14.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.14.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %321 = torch_c.from_builtin_tensor %model.layers.14.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.14.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.14.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %322 = torch_c.from_builtin_tensor %model.layers.14.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.14.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.14.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %323 = torch_c.from_builtin_tensor %model.layers.14.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.14.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.14.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %324 = torch_c.from_builtin_tensor %model.layers.14.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.14.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.14.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %325 = torch_c.from_builtin_tensor %model.layers.14.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.15.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.15.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %326 = torch_c.from_builtin_tensor %model.layers.15.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.15.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.15.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %327 = torch_c.from_builtin_tensor %model.layers.15.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.15.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.15.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %328 = torch_c.from_builtin_tensor %model.layers.15.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.15.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.15.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %329 = torch_c.from_builtin_tensor %model.layers.15.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.15.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.15.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %330 = torch_c.from_builtin_tensor %model.layers.15.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.15.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.15.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %331 = torch_c.from_builtin_tensor %model.layers.15.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.15.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.15.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %332 = torch_c.from_builtin_tensor %model.layers.15.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.15.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.15.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %333 = torch_c.from_builtin_tensor %model.layers.15.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.15.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.15.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %334 = torch_c.from_builtin_tensor %model.layers.15.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.15.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.15.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %335 = torch_c.from_builtin_tensor %model.layers.15.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.15.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.15.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %336 = torch_c.from_builtin_tensor %model.layers.15.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.15.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.15.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %337 = torch_c.from_builtin_tensor %model.layers.15.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.15.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.15.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %338 = torch_c.from_builtin_tensor %model.layers.15.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.15.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.15.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %339 = torch_c.from_builtin_tensor %model.layers.15.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.16.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.16.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %340 = torch_c.from_builtin_tensor %model.layers.16.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.16.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.16.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %341 = torch_c.from_builtin_tensor %model.layers.16.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.16.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.16.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %342 = torch_c.from_builtin_tensor %model.layers.16.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.16.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.16.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %343 = torch_c.from_builtin_tensor %model.layers.16.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.16.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.16.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %344 = torch_c.from_builtin_tensor %model.layers.16.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.16.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.16.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %345 = torch_c.from_builtin_tensor %model.layers.16.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.16.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.16.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %346 = torch_c.from_builtin_tensor %model.layers.16.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.16.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.16.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %347 = torch_c.from_builtin_tensor %model.layers.16.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.16.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.16.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %348 = torch_c.from_builtin_tensor %model.layers.16.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.16.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.16.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %349 = torch_c.from_builtin_tensor %model.layers.16.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.16.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.16.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %350 = torch_c.from_builtin_tensor %model.layers.16.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.16.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.16.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %351 = torch_c.from_builtin_tensor %model.layers.16.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.16.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.16.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %352 = torch_c.from_builtin_tensor %model.layers.16.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.16.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.16.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %353 = torch_c.from_builtin_tensor %model.layers.16.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.17.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.17.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %354 = torch_c.from_builtin_tensor %model.layers.17.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.17.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.17.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %355 = torch_c.from_builtin_tensor %model.layers.17.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.17.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.17.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %356 = torch_c.from_builtin_tensor %model.layers.17.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.17.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.17.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %357 = torch_c.from_builtin_tensor %model.layers.17.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.17.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.17.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %358 = torch_c.from_builtin_tensor %model.layers.17.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.17.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.17.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %359 = torch_c.from_builtin_tensor %model.layers.17.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.17.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.17.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %360 = torch_c.from_builtin_tensor %model.layers.17.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.17.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.17.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %361 = torch_c.from_builtin_tensor %model.layers.17.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.17.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.17.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %362 = torch_c.from_builtin_tensor %model.layers.17.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.17.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.17.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %363 = torch_c.from_builtin_tensor %model.layers.17.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.17.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.17.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %364 = torch_c.from_builtin_tensor %model.layers.17.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.17.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.17.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %365 = torch_c.from_builtin_tensor %model.layers.17.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.17.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.17.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %366 = torch_c.from_builtin_tensor %model.layers.17.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.17.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.17.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %367 = torch_c.from_builtin_tensor %model.layers.17.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.18.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.18.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %368 = torch_c.from_builtin_tensor %model.layers.18.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.18.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.18.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %369 = torch_c.from_builtin_tensor %model.layers.18.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.18.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.18.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %370 = torch_c.from_builtin_tensor %model.layers.18.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.18.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.18.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %371 = torch_c.from_builtin_tensor %model.layers.18.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.18.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.18.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %372 = torch_c.from_builtin_tensor %model.layers.18.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.18.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.18.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %373 = torch_c.from_builtin_tensor %model.layers.18.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.18.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.18.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %374 = torch_c.from_builtin_tensor %model.layers.18.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.18.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.18.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %375 = torch_c.from_builtin_tensor %model.layers.18.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.18.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.18.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %376 = torch_c.from_builtin_tensor %model.layers.18.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.18.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.18.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %377 = torch_c.from_builtin_tensor %model.layers.18.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.18.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.18.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %378 = torch_c.from_builtin_tensor %model.layers.18.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.18.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.18.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %379 = torch_c.from_builtin_tensor %model.layers.18.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.18.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.18.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %380 = torch_c.from_builtin_tensor %model.layers.18.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.18.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.18.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %381 = torch_c.from_builtin_tensor %model.layers.18.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.19.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.19.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %382 = torch_c.from_builtin_tensor %model.layers.19.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.19.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.19.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %383 = torch_c.from_builtin_tensor %model.layers.19.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.19.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.19.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %384 = torch_c.from_builtin_tensor %model.layers.19.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.19.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.19.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %385 = torch_c.from_builtin_tensor %model.layers.19.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.19.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.19.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %386 = torch_c.from_builtin_tensor %model.layers.19.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.19.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.19.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %387 = torch_c.from_builtin_tensor %model.layers.19.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.19.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.19.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %388 = torch_c.from_builtin_tensor %model.layers.19.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.19.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.19.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %389 = torch_c.from_builtin_tensor %model.layers.19.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.19.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.19.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %390 = torch_c.from_builtin_tensor %model.layers.19.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.19.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.19.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %391 = torch_c.from_builtin_tensor %model.layers.19.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.19.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.19.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %392 = torch_c.from_builtin_tensor %model.layers.19.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.19.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.19.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %393 = torch_c.from_builtin_tensor %model.layers.19.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.19.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.19.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %394 = torch_c.from_builtin_tensor %model.layers.19.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.19.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.19.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %395 = torch_c.from_builtin_tensor %model.layers.19.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.20.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.20.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %396 = torch_c.from_builtin_tensor %model.layers.20.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.20.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.20.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %397 = torch_c.from_builtin_tensor %model.layers.20.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.20.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.20.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %398 = torch_c.from_builtin_tensor %model.layers.20.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.20.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.20.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %399 = torch_c.from_builtin_tensor %model.layers.20.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.20.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.20.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %400 = torch_c.from_builtin_tensor %model.layers.20.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.20.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.20.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %401 = torch_c.from_builtin_tensor %model.layers.20.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.20.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.20.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %402 = torch_c.from_builtin_tensor %model.layers.20.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.20.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.20.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %403 = torch_c.from_builtin_tensor %model.layers.20.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.20.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.20.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %404 = torch_c.from_builtin_tensor %model.layers.20.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.20.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.20.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %405 = torch_c.from_builtin_tensor %model.layers.20.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.20.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.20.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %406 = torch_c.from_builtin_tensor %model.layers.20.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.20.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.20.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %407 = torch_c.from_builtin_tensor %model.layers.20.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.20.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.20.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %408 = torch_c.from_builtin_tensor %model.layers.20.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.20.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.20.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %409 = torch_c.from_builtin_tensor %model.layers.20.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.21.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.21.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %410 = torch_c.from_builtin_tensor %model.layers.21.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.21.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.21.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %411 = torch_c.from_builtin_tensor %model.layers.21.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.21.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.21.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %412 = torch_c.from_builtin_tensor %model.layers.21.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.21.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.21.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %413 = torch_c.from_builtin_tensor %model.layers.21.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.21.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.21.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %414 = torch_c.from_builtin_tensor %model.layers.21.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.21.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.21.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %415 = torch_c.from_builtin_tensor %model.layers.21.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.21.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.21.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %416 = torch_c.from_builtin_tensor %model.layers.21.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.21.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.21.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %417 = torch_c.from_builtin_tensor %model.layers.21.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.21.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.21.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %418 = torch_c.from_builtin_tensor %model.layers.21.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.21.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.21.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %419 = torch_c.from_builtin_tensor %model.layers.21.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.21.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.21.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %420 = torch_c.from_builtin_tensor %model.layers.21.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.21.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.21.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %421 = torch_c.from_builtin_tensor %model.layers.21.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.21.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.21.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %422 = torch_c.from_builtin_tensor %model.layers.21.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.21.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.21.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %423 = torch_c.from_builtin_tensor %model.layers.21.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.22.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.22.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %424 = torch_c.from_builtin_tensor %model.layers.22.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.22.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.22.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %425 = torch_c.from_builtin_tensor %model.layers.22.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.22.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.22.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %426 = torch_c.from_builtin_tensor %model.layers.22.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.22.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.22.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %427 = torch_c.from_builtin_tensor %model.layers.22.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.22.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.22.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %428 = torch_c.from_builtin_tensor %model.layers.22.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.22.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.22.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %429 = torch_c.from_builtin_tensor %model.layers.22.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.22.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.22.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %430 = torch_c.from_builtin_tensor %model.layers.22.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.22.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.22.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %431 = torch_c.from_builtin_tensor %model.layers.22.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.22.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.22.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %432 = torch_c.from_builtin_tensor %model.layers.22.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.22.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.22.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %433 = torch_c.from_builtin_tensor %model.layers.22.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.22.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.22.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %434 = torch_c.from_builtin_tensor %model.layers.22.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.22.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.22.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %435 = torch_c.from_builtin_tensor %model.layers.22.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.22.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.22.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %436 = torch_c.from_builtin_tensor %model.layers.22.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.22.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.22.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %437 = torch_c.from_builtin_tensor %model.layers.22.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.23.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.23.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %438 = torch_c.from_builtin_tensor %model.layers.23.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.23.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.23.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %439 = torch_c.from_builtin_tensor %model.layers.23.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.23.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.23.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %440 = torch_c.from_builtin_tensor %model.layers.23.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.23.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.23.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %441 = torch_c.from_builtin_tensor %model.layers.23.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.23.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.23.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %442 = torch_c.from_builtin_tensor %model.layers.23.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.23.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.23.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %443 = torch_c.from_builtin_tensor %model.layers.23.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.23.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.23.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %444 = torch_c.from_builtin_tensor %model.layers.23.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.23.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.23.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %445 = torch_c.from_builtin_tensor %model.layers.23.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.23.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.23.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %446 = torch_c.from_builtin_tensor %model.layers.23.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.23.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.23.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %447 = torch_c.from_builtin_tensor %model.layers.23.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.23.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.23.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %448 = torch_c.from_builtin_tensor %model.layers.23.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.23.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.23.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %449 = torch_c.from_builtin_tensor %model.layers.23.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.23.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.23.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %450 = torch_c.from_builtin_tensor %model.layers.23.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.23.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.23.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %451 = torch_c.from_builtin_tensor %model.layers.23.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.24.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.24.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %452 = torch_c.from_builtin_tensor %model.layers.24.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.24.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.24.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %453 = torch_c.from_builtin_tensor %model.layers.24.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.24.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.24.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %454 = torch_c.from_builtin_tensor %model.layers.24.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.24.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.24.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %455 = torch_c.from_builtin_tensor %model.layers.24.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.24.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.24.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %456 = torch_c.from_builtin_tensor %model.layers.24.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.24.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.24.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %457 = torch_c.from_builtin_tensor %model.layers.24.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.24.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.24.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %458 = torch_c.from_builtin_tensor %model.layers.24.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.24.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.24.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %459 = torch_c.from_builtin_tensor %model.layers.24.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.24.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.24.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %460 = torch_c.from_builtin_tensor %model.layers.24.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.24.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.24.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %461 = torch_c.from_builtin_tensor %model.layers.24.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.24.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.24.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %462 = torch_c.from_builtin_tensor %model.layers.24.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.24.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.24.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %463 = torch_c.from_builtin_tensor %model.layers.24.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.24.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.24.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %464 = torch_c.from_builtin_tensor %model.layers.24.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.24.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.24.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %465 = torch_c.from_builtin_tensor %model.layers.24.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.25.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.25.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %466 = torch_c.from_builtin_tensor %model.layers.25.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.25.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.25.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %467 = torch_c.from_builtin_tensor %model.layers.25.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.25.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.25.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %468 = torch_c.from_builtin_tensor %model.layers.25.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.25.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.25.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %469 = torch_c.from_builtin_tensor %model.layers.25.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.25.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.25.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %470 = torch_c.from_builtin_tensor %model.layers.25.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.25.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.25.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %471 = torch_c.from_builtin_tensor %model.layers.25.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.25.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.25.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %472 = torch_c.from_builtin_tensor %model.layers.25.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.25.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.25.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %473 = torch_c.from_builtin_tensor %model.layers.25.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.25.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.25.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %474 = torch_c.from_builtin_tensor %model.layers.25.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.25.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.25.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %475 = torch_c.from_builtin_tensor %model.layers.25.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.25.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.25.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %476 = torch_c.from_builtin_tensor %model.layers.25.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.25.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.25.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %477 = torch_c.from_builtin_tensor %model.layers.25.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.25.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.25.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %478 = torch_c.from_builtin_tensor %model.layers.25.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.25.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.25.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %479 = torch_c.from_builtin_tensor %model.layers.25.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.26.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.26.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %480 = torch_c.from_builtin_tensor %model.layers.26.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.26.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.26.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %481 = torch_c.from_builtin_tensor %model.layers.26.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.26.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.26.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %482 = torch_c.from_builtin_tensor %model.layers.26.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.26.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.26.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %483 = torch_c.from_builtin_tensor %model.layers.26.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.26.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.26.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %484 = torch_c.from_builtin_tensor %model.layers.26.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.26.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.26.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %485 = torch_c.from_builtin_tensor %model.layers.26.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.26.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.26.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %486 = torch_c.from_builtin_tensor %model.layers.26.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.26.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.26.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %487 = torch_c.from_builtin_tensor %model.layers.26.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.26.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.26.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %488 = torch_c.from_builtin_tensor %model.layers.26.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.26.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.26.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %489 = torch_c.from_builtin_tensor %model.layers.26.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.26.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.26.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %490 = torch_c.from_builtin_tensor %model.layers.26.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.26.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.26.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %491 = torch_c.from_builtin_tensor %model.layers.26.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.26.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.26.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %492 = torch_c.from_builtin_tensor %model.layers.26.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.26.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.26.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %493 = torch_c.from_builtin_tensor %model.layers.26.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.27.attn.q_proj.MatMul.weight_Q4 = util.global.load @model.layers.27.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8>
    %494 = torch_c.from_builtin_tensor %model.layers.27.attn.q_proj.MatMul.weight_Q4 : tensor<2048x32x16xi8> -> !torch.vtensor<[2048,32,16],ui8>
    %model.layers.27.attn.q_proj.MatMul.weight_scales = util.global.load @model.layers.27.attn.q_proj.MatMul.weight_scales : tensor<65536xf16>
    %495 = torch_c.from_builtin_tensor %model.layers.27.attn.q_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.27.attn.k_proj.MatMul.weight_Q4 = util.global.load @model.layers.27.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %496 = torch_c.from_builtin_tensor %model.layers.27.attn.k_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.27.attn.k_proj.MatMul.weight_scales = util.global.load @model.layers.27.attn.k_proj.MatMul.weight_scales : tensor<32768xf16>
    %497 = torch_c.from_builtin_tensor %model.layers.27.attn.k_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.27.attn.v_proj.MatMul.weight_Q4 = util.global.load @model.layers.27.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8>
    %498 = torch_c.from_builtin_tensor %model.layers.27.attn.v_proj.MatMul.weight_Q4 : tensor<1024x32x16xi8> -> !torch.vtensor<[1024,32,16],ui8>
    %model.layers.27.attn.v_proj.MatMul.weight_scales = util.global.load @model.layers.27.attn.v_proj.MatMul.weight_scales : tensor<32768xf16>
    %499 = torch_c.from_builtin_tensor %model.layers.27.attn.v_proj.MatMul.weight_scales : tensor<32768xf16> -> !torch.vtensor<[32768],f16>
    %model.layers.27.attn.o_proj.MatMul.weight_Q4 = util.global.load @model.layers.27.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8>
    %500 = torch_c.from_builtin_tensor %model.layers.27.attn.o_proj.MatMul.weight_Q4 : tensor<1024x64x16xi8> -> !torch.vtensor<[1024,64,16],ui8>
    %model.layers.27.attn.o_proj.MatMul.weight_scales = util.global.load @model.layers.27.attn.o_proj.MatMul.weight_scales : tensor<65536xf16>
    %501 = torch_c.from_builtin_tensor %model.layers.27.attn.o_proj.MatMul.weight_scales : tensor<65536xf16> -> !torch.vtensor<[65536],f16>
    %model.layers.27.mlp.gate_proj.MatMul.weight_Q4 = util.global.load @model.layers.27.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %502 = torch_c.from_builtin_tensor %model.layers.27.mlp.gate_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.27.mlp.gate_proj.MatMul.weight_scales = util.global.load @model.layers.27.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16>
    %503 = torch_c.from_builtin_tensor %model.layers.27.mlp.gate_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.27.mlp.up_proj.MatMul.weight_Q4 = util.global.load @model.layers.27.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8>
    %504 = torch_c.from_builtin_tensor %model.layers.27.mlp.up_proj.MatMul.weight_Q4 : tensor<3072x32x16xi8> -> !torch.vtensor<[3072,32,16],ui8>
    %model.layers.27.mlp.up_proj.MatMul.weight_scales = util.global.load @model.layers.27.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16>
    %505 = torch_c.from_builtin_tensor %model.layers.27.mlp.up_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %model.layers.27.mlp.down_proj.MatMul.weight_Q4 = util.global.load @model.layers.27.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8>
    %506 = torch_c.from_builtin_tensor %model.layers.27.mlp.down_proj.MatMul.weight_Q4 : tensor<1024x96x16xi8> -> !torch.vtensor<[1024,96,16],ui8>
    %model.layers.27.mlp.down_proj.MatMul.weight_scales = util.global.load @model.layers.27.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16>
    %507 = torch_c.from_builtin_tensor %model.layers.27.mlp.down_proj.MatMul.weight_scales : tensor<98304xf16> -> !torch.vtensor<[98304],f16>
    %none = torch.constant.none
    %508 = torch.operator "onnx.Shape"(%arg0) : (!torch.vtensor<[?,?],si64>) -> !torch.vtensor<[2],si64> 
    %509 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__model_numpy_helper_TensorProto.INT64_0D_1> : tensor<si64>} : () -> !torch.vtensor<[],si64> 
    %510 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__model_numpy_helper_TensorProto.INT64_1D_0> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %511 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__model_numpy_helper_TensorProto.INT64_1D__1> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %512 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__model_numpy_helper_TensorProto.INT64_1D_1> : tensor<1xsi64>} : () -> !torch.vtensor<[1],si64> 
    %513 = torch.operator "onnx.Shape"(%arg1) : (!torch.vtensor<[?,?],si64>) -> !torch.vtensor<[2],si64> 
    %514 = torch.operator "onnx.Gather"(%0, %arg0) : (!torch.vtensor<[151936,1024],f16>, !torch.vtensor<[?,?],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %515 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__model_numpy_helper_TensorProto.INT64_1D_0___1__128> : tensor<3xsi64>} : () -> !torch.vtensor<[3],si64> 
    %516 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__model_numpy_helper_TensorProto.INT64_1D_0___1__2048> : tensor<3xsi64>} : () -> !torch.vtensor<[3],si64> 
    %517 = torch.operator "onnx.Constant"() {torch.onnx.value = dense_resource<__model_numpy_helper_TensorProto.INT64_1D_0___1__1024> : tensor<3xsi64>} : () -> !torch.vtensor<[3],si64> 
    %518 = torch.operator "onnx.Transpose"(%0) : (!torch.vtensor<[151936,1024],f16>) -> !torch.vtensor<[1024,151936],f16> 
    %519 = torch.operator "onnx.Gather"(%508, %509) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],si64>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],si64> 
    %520 = torch.operator "onnx.ReduceSum"(%arg1, %512) : (!torch.vtensor<[?,?],si64>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[?,1],si64> 
    %521 = torch.operator "onnx.Gather"(%513, %509) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[2],si64>, !torch.vtensor<[],si64>) -> !torch.vtensor<[],si64> 
    %522 = torch.operator "onnx.SimplifiedLayerNormalization"(%514, %1) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %523 = torch.operator "onnx.Unsqueeze"(%519, %510) : (!torch.vtensor<[],si64>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[1],si64> 
    %524 = torch.operator "onnx.Sub"(%520, %512) : (!torch.vtensor<[?,1],si64>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[?,1],si64> 
    %525 = torch.operator "onnx.Cast"(%521) {torch.onnx.to = 6 : si64} : (!torch.vtensor<[],si64>) -> !torch.vtensor<[],si32> 
    %526 = torch.operator "onnx.MatMulNBits"(%522, %116, %117) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %527 = torch.operator "onnx.MatMulNBits"(%522, %118, %119) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %528 = torch.operator "onnx.MatMulNBits"(%522, %120, %121) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %529 = torch.operator "onnx.Concat"(%511, %523) {torch.onnx.axis = 0 : si64} : (!torch.vtensor<[1],si64>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[2],si64> 
    %530 = torch.operator "onnx.Cast"(%524) {torch.onnx.to = 6 : si64} : (!torch.vtensor<[?,1],si64>) -> !torch.vtensor<[?,1],si32> 
    %531 = torch.operator "onnx.Reshape"(%526, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %532 = torch.operator "onnx.Reshape"(%527, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %533 = torch.operator "onnx.Reshape"(%arg2, %529) : (!torch.vtensor<[?,?],si64>, !torch.vtensor<[2],si64>) -> !torch.vtensor<[?,?],si64> 
    %534 = torch.operator "onnx.SimplifiedLayerNormalization"(%531, %2) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %535 = torch.operator "onnx.SimplifiedLayerNormalization"(%532, %3) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %536 = torch.operator "onnx.Reshape"(%534, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %537 = torch.operator "onnx.Reshape"(%535, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %538 = torch.operator "onnx.RotaryEmbedding"(%536, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %539 = torch.operator "onnx.RotaryEmbedding"(%537, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %540:3 = torch.operator "onnx.GroupQueryAttention"(%538, %539, %528, %arg3, %arg4, %530, %525, %none, %none) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %541 = torch.operator "onnx.MatMulNBits"(%540#0, %122, %123) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %542:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%514, %541, %6) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %543 = torch.operator "onnx.MatMulNBits"(%542#0, %124, %125) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %544 = torch.operator "onnx.MatMulNBits"(%542#0, %126, %127) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %545 = torch.operator "onnx.Sigmoid"(%543) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %546 = torch.operator "onnx.Mul"(%543, %545) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %547 = torch.operator "onnx.Mul"(%546, %544) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %548 = torch.operator "onnx.MatMulNBits"(%547, %128, %129) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %549:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%542#3, %548, %7) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %550 = torch.operator "onnx.MatMulNBits"(%549#0, %130, %131) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %551 = torch.operator "onnx.MatMulNBits"(%549#0, %132, %133) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %552 = torch.operator "onnx.MatMulNBits"(%549#0, %134, %135) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %553 = torch.operator "onnx.Reshape"(%550, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %554 = torch.operator "onnx.Reshape"(%551, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %555 = torch.operator "onnx.SimplifiedLayerNormalization"(%553, %8) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %556 = torch.operator "onnx.SimplifiedLayerNormalization"(%554, %9) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %557 = torch.operator "onnx.Reshape"(%555, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %558 = torch.operator "onnx.Reshape"(%556, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %559 = torch.operator "onnx.RotaryEmbedding"(%557, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %560 = torch.operator "onnx.RotaryEmbedding"(%558, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %561:3 = torch.operator "onnx.GroupQueryAttention"(%559, %560, %552, %arg5, %arg6, %530, %525, %549#2, %549#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %562 = torch.operator "onnx.MatMulNBits"(%561#0, %136, %137) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %563:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%549#3, %562, %10) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %564 = torch.operator "onnx.MatMulNBits"(%563#0, %138, %139) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %565 = torch.operator "onnx.MatMulNBits"(%563#0, %140, %141) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %566 = torch.operator "onnx.Sigmoid"(%564) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %567 = torch.operator "onnx.Mul"(%564, %566) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %568 = torch.operator "onnx.Mul"(%567, %565) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %569 = torch.operator "onnx.MatMulNBits"(%568, %142, %143) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %570:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%563#3, %569, %11) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %571 = torch.operator "onnx.MatMulNBits"(%570#0, %144, %145) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %572 = torch.operator "onnx.MatMulNBits"(%570#0, %146, %147) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %573 = torch.operator "onnx.MatMulNBits"(%570#0, %148, %149) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %574 = torch.operator "onnx.Reshape"(%571, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %575 = torch.operator "onnx.Reshape"(%572, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %576 = torch.operator "onnx.SimplifiedLayerNormalization"(%574, %12) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %577 = torch.operator "onnx.SimplifiedLayerNormalization"(%575, %13) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %578 = torch.operator "onnx.Reshape"(%576, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %579 = torch.operator "onnx.Reshape"(%577, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %580 = torch.operator "onnx.RotaryEmbedding"(%578, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %581 = torch.operator "onnx.RotaryEmbedding"(%579, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %582:3 = torch.operator "onnx.GroupQueryAttention"(%580, %581, %573, %arg7, %arg8, %530, %525, %570#2, %570#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %583 = torch.operator "onnx.MatMulNBits"(%582#0, %150, %151) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %584:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%570#3, %583, %14) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %585 = torch.operator "onnx.MatMulNBits"(%584#0, %152, %153) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %586 = torch.operator "onnx.MatMulNBits"(%584#0, %154, %155) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %587 = torch.operator "onnx.Sigmoid"(%585) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %588 = torch.operator "onnx.Mul"(%585, %587) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %589 = torch.operator "onnx.Mul"(%588, %586) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %590 = torch.operator "onnx.MatMulNBits"(%589, %156, %157) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %591:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%584#3, %590, %15) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %592 = torch.operator "onnx.MatMulNBits"(%591#0, %158, %159) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %593 = torch.operator "onnx.MatMulNBits"(%591#0, %160, %161) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %594 = torch.operator "onnx.MatMulNBits"(%591#0, %162, %163) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %595 = torch.operator "onnx.Reshape"(%592, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %596 = torch.operator "onnx.Reshape"(%593, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %597 = torch.operator "onnx.SimplifiedLayerNormalization"(%595, %16) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %598 = torch.operator "onnx.SimplifiedLayerNormalization"(%596, %17) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %599 = torch.operator "onnx.Reshape"(%597, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %600 = torch.operator "onnx.Reshape"(%598, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %601 = torch.operator "onnx.RotaryEmbedding"(%599, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %602 = torch.operator "onnx.RotaryEmbedding"(%600, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %603:3 = torch.operator "onnx.GroupQueryAttention"(%601, %602, %594, %arg9, %arg10, %530, %525, %591#2, %591#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %604 = torch.operator "onnx.MatMulNBits"(%603#0, %164, %165) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %605:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%591#3, %604, %18) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %606 = torch.operator "onnx.MatMulNBits"(%605#0, %166, %167) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %607 = torch.operator "onnx.MatMulNBits"(%605#0, %168, %169) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %608 = torch.operator "onnx.Sigmoid"(%606) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %609 = torch.operator "onnx.Mul"(%606, %608) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %610 = torch.operator "onnx.Mul"(%609, %607) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %611 = torch.operator "onnx.MatMulNBits"(%610, %170, %171) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %612:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%605#3, %611, %19) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %613 = torch.operator "onnx.MatMulNBits"(%612#0, %172, %173) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %614 = torch.operator "onnx.MatMulNBits"(%612#0, %174, %175) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %615 = torch.operator "onnx.MatMulNBits"(%612#0, %176, %177) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %616 = torch.operator "onnx.Reshape"(%613, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %617 = torch.operator "onnx.Reshape"(%614, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %618 = torch.operator "onnx.SimplifiedLayerNormalization"(%616, %20) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %619 = torch.operator "onnx.SimplifiedLayerNormalization"(%617, %21) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %620 = torch.operator "onnx.Reshape"(%618, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %621 = torch.operator "onnx.Reshape"(%619, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %622 = torch.operator "onnx.RotaryEmbedding"(%620, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %623 = torch.operator "onnx.RotaryEmbedding"(%621, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %624:3 = torch.operator "onnx.GroupQueryAttention"(%622, %623, %615, %arg11, %arg12, %530, %525, %612#2, %612#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %625 = torch.operator "onnx.MatMulNBits"(%624#0, %178, %179) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %626:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%612#3, %625, %22) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %627 = torch.operator "onnx.MatMulNBits"(%626#0, %180, %181) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %628 = torch.operator "onnx.MatMulNBits"(%626#0, %182, %183) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %629 = torch.operator "onnx.Sigmoid"(%627) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %630 = torch.operator "onnx.Mul"(%627, %629) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %631 = torch.operator "onnx.Mul"(%630, %628) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %632 = torch.operator "onnx.MatMulNBits"(%631, %184, %185) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %633:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%626#3, %632, %23) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %634 = torch.operator "onnx.MatMulNBits"(%633#0, %186, %187) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %635 = torch.operator "onnx.MatMulNBits"(%633#0, %188, %189) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %636 = torch.operator "onnx.MatMulNBits"(%633#0, %190, %191) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %637 = torch.operator "onnx.Reshape"(%634, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %638 = torch.operator "onnx.Reshape"(%635, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %639 = torch.operator "onnx.SimplifiedLayerNormalization"(%637, %24) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %640 = torch.operator "onnx.SimplifiedLayerNormalization"(%638, %25) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %641 = torch.operator "onnx.Reshape"(%639, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %642 = torch.operator "onnx.Reshape"(%640, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %643 = torch.operator "onnx.RotaryEmbedding"(%641, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %644 = torch.operator "onnx.RotaryEmbedding"(%642, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %645:3 = torch.operator "onnx.GroupQueryAttention"(%643, %644, %636, %arg13, %arg14, %530, %525, %633#2, %633#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %646 = torch.operator "onnx.MatMulNBits"(%645#0, %192, %193) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %647:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%633#3, %646, %26) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %648 = torch.operator "onnx.MatMulNBits"(%647#0, %194, %195) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %649 = torch.operator "onnx.MatMulNBits"(%647#0, %196, %197) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %650 = torch.operator "onnx.Sigmoid"(%648) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %651 = torch.operator "onnx.Mul"(%648, %650) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %652 = torch.operator "onnx.Mul"(%651, %649) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %653 = torch.operator "onnx.MatMulNBits"(%652, %198, %199) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %654:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%647#3, %653, %27) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %655 = torch.operator "onnx.MatMulNBits"(%654#0, %200, %201) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %656 = torch.operator "onnx.MatMulNBits"(%654#0, %202, %203) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %657 = torch.operator "onnx.MatMulNBits"(%654#0, %204, %205) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %658 = torch.operator "onnx.Reshape"(%655, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %659 = torch.operator "onnx.Reshape"(%656, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %660 = torch.operator "onnx.SimplifiedLayerNormalization"(%658, %28) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %661 = torch.operator "onnx.SimplifiedLayerNormalization"(%659, %29) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %662 = torch.operator "onnx.Reshape"(%660, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %663 = torch.operator "onnx.Reshape"(%661, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %664 = torch.operator "onnx.RotaryEmbedding"(%662, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %665 = torch.operator "onnx.RotaryEmbedding"(%663, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %666:3 = torch.operator "onnx.GroupQueryAttention"(%664, %665, %657, %arg15, %arg16, %530, %525, %654#2, %654#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %667 = torch.operator "onnx.MatMulNBits"(%666#0, %206, %207) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %668:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%654#3, %667, %30) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %669 = torch.operator "onnx.MatMulNBits"(%668#0, %208, %209) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %670 = torch.operator "onnx.MatMulNBits"(%668#0, %210, %211) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %671 = torch.operator "onnx.Sigmoid"(%669) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %672 = torch.operator "onnx.Mul"(%669, %671) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %673 = torch.operator "onnx.Mul"(%672, %670) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %674 = torch.operator "onnx.MatMulNBits"(%673, %212, %213) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %675:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%668#3, %674, %31) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %676 = torch.operator "onnx.MatMulNBits"(%675#0, %214, %215) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %677 = torch.operator "onnx.MatMulNBits"(%675#0, %216, %217) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %678 = torch.operator "onnx.MatMulNBits"(%675#0, %218, %219) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %679 = torch.operator "onnx.Reshape"(%676, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %680 = torch.operator "onnx.Reshape"(%677, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %681 = torch.operator "onnx.SimplifiedLayerNormalization"(%679, %32) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %682 = torch.operator "onnx.SimplifiedLayerNormalization"(%680, %33) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %683 = torch.operator "onnx.Reshape"(%681, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %684 = torch.operator "onnx.Reshape"(%682, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %685 = torch.operator "onnx.RotaryEmbedding"(%683, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %686 = torch.operator "onnx.RotaryEmbedding"(%684, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %687:3 = torch.operator "onnx.GroupQueryAttention"(%685, %686, %678, %arg17, %arg18, %530, %525, %675#2, %675#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %688 = torch.operator "onnx.MatMulNBits"(%687#0, %220, %221) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %689:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%675#3, %688, %34) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %690 = torch.operator "onnx.MatMulNBits"(%689#0, %222, %223) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %691 = torch.operator "onnx.MatMulNBits"(%689#0, %224, %225) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %692 = torch.operator "onnx.Sigmoid"(%690) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %693 = torch.operator "onnx.Mul"(%690, %692) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %694 = torch.operator "onnx.Mul"(%693, %691) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %695 = torch.operator "onnx.MatMulNBits"(%694, %226, %227) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %696:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%689#3, %695, %35) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %697 = torch.operator "onnx.MatMulNBits"(%696#0, %228, %229) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %698 = torch.operator "onnx.MatMulNBits"(%696#0, %230, %231) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %699 = torch.operator "onnx.MatMulNBits"(%696#0, %232, %233) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %700 = torch.operator "onnx.Reshape"(%697, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %701 = torch.operator "onnx.Reshape"(%698, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %702 = torch.operator "onnx.SimplifiedLayerNormalization"(%700, %36) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %703 = torch.operator "onnx.SimplifiedLayerNormalization"(%701, %37) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %704 = torch.operator "onnx.Reshape"(%702, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %705 = torch.operator "onnx.Reshape"(%703, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %706 = torch.operator "onnx.RotaryEmbedding"(%704, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %707 = torch.operator "onnx.RotaryEmbedding"(%705, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %708:3 = torch.operator "onnx.GroupQueryAttention"(%706, %707, %699, %arg19, %arg20, %530, %525, %696#2, %696#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %709 = torch.operator "onnx.MatMulNBits"(%708#0, %234, %235) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %710:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%696#3, %709, %38) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %711 = torch.operator "onnx.MatMulNBits"(%710#0, %236, %237) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %712 = torch.operator "onnx.MatMulNBits"(%710#0, %238, %239) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %713 = torch.operator "onnx.Sigmoid"(%711) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %714 = torch.operator "onnx.Mul"(%711, %713) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %715 = torch.operator "onnx.Mul"(%714, %712) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %716 = torch.operator "onnx.MatMulNBits"(%715, %240, %241) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %717:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%710#3, %716, %39) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %718 = torch.operator "onnx.MatMulNBits"(%717#0, %242, %243) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %719 = torch.operator "onnx.MatMulNBits"(%717#0, %244, %245) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %720 = torch.operator "onnx.MatMulNBits"(%717#0, %246, %247) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %721 = torch.operator "onnx.Reshape"(%718, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %722 = torch.operator "onnx.Reshape"(%719, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %723 = torch.operator "onnx.SimplifiedLayerNormalization"(%721, %40) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %724 = torch.operator "onnx.SimplifiedLayerNormalization"(%722, %41) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %725 = torch.operator "onnx.Reshape"(%723, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %726 = torch.operator "onnx.Reshape"(%724, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %727 = torch.operator "onnx.RotaryEmbedding"(%725, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %728 = torch.operator "onnx.RotaryEmbedding"(%726, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %729:3 = torch.operator "onnx.GroupQueryAttention"(%727, %728, %720, %arg21, %arg22, %530, %525, %717#2, %717#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %730 = torch.operator "onnx.MatMulNBits"(%729#0, %248, %249) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %731:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%717#3, %730, %42) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %732 = torch.operator "onnx.MatMulNBits"(%731#0, %250, %251) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %733 = torch.operator "onnx.MatMulNBits"(%731#0, %252, %253) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %734 = torch.operator "onnx.Sigmoid"(%732) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %735 = torch.operator "onnx.Mul"(%732, %734) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %736 = torch.operator "onnx.Mul"(%735, %733) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %737 = torch.operator "onnx.MatMulNBits"(%736, %254, %255) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %738:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%731#3, %737, %43) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %739 = torch.operator "onnx.MatMulNBits"(%738#0, %256, %257) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %740 = torch.operator "onnx.MatMulNBits"(%738#0, %258, %259) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %741 = torch.operator "onnx.MatMulNBits"(%738#0, %260, %261) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %742 = torch.operator "onnx.Reshape"(%739, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %743 = torch.operator "onnx.Reshape"(%740, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %744 = torch.operator "onnx.SimplifiedLayerNormalization"(%742, %44) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %745 = torch.operator "onnx.SimplifiedLayerNormalization"(%743, %45) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %746 = torch.operator "onnx.Reshape"(%744, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %747 = torch.operator "onnx.Reshape"(%745, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %748 = torch.operator "onnx.RotaryEmbedding"(%746, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %749 = torch.operator "onnx.RotaryEmbedding"(%747, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %750:3 = torch.operator "onnx.GroupQueryAttention"(%748, %749, %741, %arg23, %arg24, %530, %525, %738#2, %738#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %751 = torch.operator "onnx.MatMulNBits"(%750#0, %262, %263) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %752:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%738#3, %751, %46) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %753 = torch.operator "onnx.MatMulNBits"(%752#0, %264, %265) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %754 = torch.operator "onnx.MatMulNBits"(%752#0, %266, %267) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %755 = torch.operator "onnx.Sigmoid"(%753) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %756 = torch.operator "onnx.Mul"(%753, %755) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %757 = torch.operator "onnx.Mul"(%756, %754) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %758 = torch.operator "onnx.MatMulNBits"(%757, %268, %269) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %759:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%752#3, %758, %47) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %760 = torch.operator "onnx.MatMulNBits"(%759#0, %270, %271) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %761 = torch.operator "onnx.MatMulNBits"(%759#0, %272, %273) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %762 = torch.operator "onnx.MatMulNBits"(%759#0, %274, %275) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %763 = torch.operator "onnx.Reshape"(%760, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %764 = torch.operator "onnx.Reshape"(%761, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %765 = torch.operator "onnx.SimplifiedLayerNormalization"(%763, %48) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %766 = torch.operator "onnx.SimplifiedLayerNormalization"(%764, %49) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %767 = torch.operator "onnx.Reshape"(%765, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %768 = torch.operator "onnx.Reshape"(%766, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %769 = torch.operator "onnx.RotaryEmbedding"(%767, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %770 = torch.operator "onnx.RotaryEmbedding"(%768, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %771:3 = torch.operator "onnx.GroupQueryAttention"(%769, %770, %762, %arg25, %arg26, %530, %525, %759#2, %759#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %772 = torch.operator "onnx.MatMulNBits"(%771#0, %276, %277) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %773:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%759#3, %772, %50) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %774 = torch.operator "onnx.MatMulNBits"(%773#0, %278, %279) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %775 = torch.operator "onnx.MatMulNBits"(%773#0, %280, %281) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %776 = torch.operator "onnx.Sigmoid"(%774) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %777 = torch.operator "onnx.Mul"(%774, %776) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %778 = torch.operator "onnx.Mul"(%777, %775) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %779 = torch.operator "onnx.MatMulNBits"(%778, %282, %283) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %780:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%773#3, %779, %51) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %781 = torch.operator "onnx.MatMulNBits"(%780#0, %284, %285) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %782 = torch.operator "onnx.MatMulNBits"(%780#0, %286, %287) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %783 = torch.operator "onnx.MatMulNBits"(%780#0, %288, %289) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %784 = torch.operator "onnx.Reshape"(%781, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %785 = torch.operator "onnx.Reshape"(%782, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %786 = torch.operator "onnx.SimplifiedLayerNormalization"(%784, %52) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %787 = torch.operator "onnx.SimplifiedLayerNormalization"(%785, %53) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %788 = torch.operator "onnx.Reshape"(%786, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %789 = torch.operator "onnx.Reshape"(%787, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %790 = torch.operator "onnx.RotaryEmbedding"(%788, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %791 = torch.operator "onnx.RotaryEmbedding"(%789, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %792:3 = torch.operator "onnx.GroupQueryAttention"(%790, %791, %783, %arg27, %arg28, %530, %525, %780#2, %780#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %793 = torch.operator "onnx.MatMulNBits"(%792#0, %290, %291) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %794:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%780#3, %793, %54) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %795 = torch.operator "onnx.MatMulNBits"(%794#0, %292, %293) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %796 = torch.operator "onnx.MatMulNBits"(%794#0, %294, %295) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %797 = torch.operator "onnx.Sigmoid"(%795) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %798 = torch.operator "onnx.Mul"(%795, %797) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %799 = torch.operator "onnx.Mul"(%798, %796) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %800 = torch.operator "onnx.MatMulNBits"(%799, %296, %297) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %801:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%794#3, %800, %55) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %802 = torch.operator "onnx.MatMulNBits"(%801#0, %298, %299) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %803 = torch.operator "onnx.MatMulNBits"(%801#0, %300, %301) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %804 = torch.operator "onnx.MatMulNBits"(%801#0, %302, %303) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %805 = torch.operator "onnx.Reshape"(%802, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %806 = torch.operator "onnx.Reshape"(%803, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %807 = torch.operator "onnx.SimplifiedLayerNormalization"(%805, %56) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %808 = torch.operator "onnx.SimplifiedLayerNormalization"(%806, %57) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %809 = torch.operator "onnx.Reshape"(%807, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %810 = torch.operator "onnx.Reshape"(%808, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %811 = torch.operator "onnx.RotaryEmbedding"(%809, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %812 = torch.operator "onnx.RotaryEmbedding"(%810, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %813:3 = torch.operator "onnx.GroupQueryAttention"(%811, %812, %804, %arg29, %arg30, %530, %525, %801#2, %801#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %814 = torch.operator "onnx.MatMulNBits"(%813#0, %304, %305) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %815:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%801#3, %814, %58) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %816 = torch.operator "onnx.MatMulNBits"(%815#0, %306, %307) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %817 = torch.operator "onnx.MatMulNBits"(%815#0, %308, %309) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %818 = torch.operator "onnx.Sigmoid"(%816) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %819 = torch.operator "onnx.Mul"(%816, %818) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %820 = torch.operator "onnx.Mul"(%819, %817) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %821 = torch.operator "onnx.MatMulNBits"(%820, %310, %311) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %822:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%815#3, %821, %59) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %823 = torch.operator "onnx.MatMulNBits"(%822#0, %312, %313) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %824 = torch.operator "onnx.MatMulNBits"(%822#0, %314, %315) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %825 = torch.operator "onnx.MatMulNBits"(%822#0, %316, %317) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %826 = torch.operator "onnx.Reshape"(%823, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %827 = torch.operator "onnx.Reshape"(%824, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %828 = torch.operator "onnx.SimplifiedLayerNormalization"(%826, %60) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %829 = torch.operator "onnx.SimplifiedLayerNormalization"(%827, %61) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %830 = torch.operator "onnx.Reshape"(%828, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %831 = torch.operator "onnx.Reshape"(%829, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %832 = torch.operator "onnx.RotaryEmbedding"(%830, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %833 = torch.operator "onnx.RotaryEmbedding"(%831, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %834:3 = torch.operator "onnx.GroupQueryAttention"(%832, %833, %825, %arg31, %arg32, %530, %525, %822#2, %822#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %835 = torch.operator "onnx.MatMulNBits"(%834#0, %318, %319) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %836:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%822#3, %835, %62) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %837 = torch.operator "onnx.MatMulNBits"(%836#0, %320, %321) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %838 = torch.operator "onnx.MatMulNBits"(%836#0, %322, %323) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %839 = torch.operator "onnx.Sigmoid"(%837) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %840 = torch.operator "onnx.Mul"(%837, %839) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %841 = torch.operator "onnx.Mul"(%840, %838) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %842 = torch.operator "onnx.MatMulNBits"(%841, %324, %325) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %843:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%836#3, %842, %63) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %844 = torch.operator "onnx.MatMulNBits"(%843#0, %326, %327) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %845 = torch.operator "onnx.MatMulNBits"(%843#0, %328, %329) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %846 = torch.operator "onnx.MatMulNBits"(%843#0, %330, %331) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %847 = torch.operator "onnx.Reshape"(%844, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %848 = torch.operator "onnx.Reshape"(%845, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %849 = torch.operator "onnx.SimplifiedLayerNormalization"(%847, %64) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %850 = torch.operator "onnx.SimplifiedLayerNormalization"(%848, %65) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %851 = torch.operator "onnx.Reshape"(%849, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %852 = torch.operator "onnx.Reshape"(%850, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %853 = torch.operator "onnx.RotaryEmbedding"(%851, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %854 = torch.operator "onnx.RotaryEmbedding"(%852, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %855:3 = torch.operator "onnx.GroupQueryAttention"(%853, %854, %846, %arg33, %arg34, %530, %525, %843#2, %843#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %856 = torch.operator "onnx.MatMulNBits"(%855#0, %332, %333) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %857:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%843#3, %856, %66) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %858 = torch.operator "onnx.MatMulNBits"(%857#0, %334, %335) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %859 = torch.operator "onnx.MatMulNBits"(%857#0, %336, %337) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %860 = torch.operator "onnx.Sigmoid"(%858) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %861 = torch.operator "onnx.Mul"(%858, %860) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %862 = torch.operator "onnx.Mul"(%861, %859) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %863 = torch.operator "onnx.MatMulNBits"(%862, %338, %339) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %864:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%857#3, %863, %67) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %865 = torch.operator "onnx.MatMulNBits"(%864#0, %340, %341) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %866 = torch.operator "onnx.MatMulNBits"(%864#0, %342, %343) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %867 = torch.operator "onnx.MatMulNBits"(%864#0, %344, %345) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %868 = torch.operator "onnx.Reshape"(%865, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %869 = torch.operator "onnx.Reshape"(%866, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %870 = torch.operator "onnx.SimplifiedLayerNormalization"(%868, %68) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %871 = torch.operator "onnx.SimplifiedLayerNormalization"(%869, %69) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %872 = torch.operator "onnx.Reshape"(%870, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %873 = torch.operator "onnx.Reshape"(%871, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %874 = torch.operator "onnx.RotaryEmbedding"(%872, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %875 = torch.operator "onnx.RotaryEmbedding"(%873, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %876:3 = torch.operator "onnx.GroupQueryAttention"(%874, %875, %867, %arg35, %arg36, %530, %525, %864#2, %864#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %877 = torch.operator "onnx.MatMulNBits"(%876#0, %346, %347) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %878:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%864#3, %877, %70) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %879 = torch.operator "onnx.MatMulNBits"(%878#0, %348, %349) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %880 = torch.operator "onnx.MatMulNBits"(%878#0, %350, %351) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %881 = torch.operator "onnx.Sigmoid"(%879) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %882 = torch.operator "onnx.Mul"(%879, %881) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %883 = torch.operator "onnx.Mul"(%882, %880) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %884 = torch.operator "onnx.MatMulNBits"(%883, %352, %353) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %885:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%878#3, %884, %71) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %886 = torch.operator "onnx.MatMulNBits"(%885#0, %354, %355) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %887 = torch.operator "onnx.MatMulNBits"(%885#0, %356, %357) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %888 = torch.operator "onnx.MatMulNBits"(%885#0, %358, %359) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %889 = torch.operator "onnx.Reshape"(%886, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %890 = torch.operator "onnx.Reshape"(%887, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %891 = torch.operator "onnx.SimplifiedLayerNormalization"(%889, %72) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %892 = torch.operator "onnx.SimplifiedLayerNormalization"(%890, %73) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %893 = torch.operator "onnx.Reshape"(%891, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %894 = torch.operator "onnx.Reshape"(%892, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %895 = torch.operator "onnx.RotaryEmbedding"(%893, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %896 = torch.operator "onnx.RotaryEmbedding"(%894, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %897:3 = torch.operator "onnx.GroupQueryAttention"(%895, %896, %888, %arg37, %arg38, %530, %525, %885#2, %885#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %898 = torch.operator "onnx.MatMulNBits"(%897#0, %360, %361) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %899:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%885#3, %898, %74) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %900 = torch.operator "onnx.MatMulNBits"(%899#0, %362, %363) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %901 = torch.operator "onnx.MatMulNBits"(%899#0, %364, %365) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %902 = torch.operator "onnx.Sigmoid"(%900) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %903 = torch.operator "onnx.Mul"(%900, %902) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %904 = torch.operator "onnx.Mul"(%903, %901) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %905 = torch.operator "onnx.MatMulNBits"(%904, %366, %367) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %906:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%899#3, %905, %75) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %907 = torch.operator "onnx.MatMulNBits"(%906#0, %368, %369) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %908 = torch.operator "onnx.MatMulNBits"(%906#0, %370, %371) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %909 = torch.operator "onnx.MatMulNBits"(%906#0, %372, %373) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %910 = torch.operator "onnx.Reshape"(%907, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %911 = torch.operator "onnx.Reshape"(%908, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %912 = torch.operator "onnx.SimplifiedLayerNormalization"(%910, %76) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %913 = torch.operator "onnx.SimplifiedLayerNormalization"(%911, %77) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %914 = torch.operator "onnx.Reshape"(%912, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %915 = torch.operator "onnx.Reshape"(%913, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %916 = torch.operator "onnx.RotaryEmbedding"(%914, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %917 = torch.operator "onnx.RotaryEmbedding"(%915, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %918:3 = torch.operator "onnx.GroupQueryAttention"(%916, %917, %909, %arg39, %arg40, %530, %525, %906#2, %906#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %919 = torch.operator "onnx.MatMulNBits"(%918#0, %374, %375) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %920:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%906#3, %919, %78) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %921 = torch.operator "onnx.MatMulNBits"(%920#0, %376, %377) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %922 = torch.operator "onnx.MatMulNBits"(%920#0, %378, %379) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %923 = torch.operator "onnx.Sigmoid"(%921) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %924 = torch.operator "onnx.Mul"(%921, %923) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %925 = torch.operator "onnx.Mul"(%924, %922) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %926 = torch.operator "onnx.MatMulNBits"(%925, %380, %381) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %927:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%920#3, %926, %79) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %928 = torch.operator "onnx.MatMulNBits"(%927#0, %382, %383) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %929 = torch.operator "onnx.MatMulNBits"(%927#0, %384, %385) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %930 = torch.operator "onnx.MatMulNBits"(%927#0, %386, %387) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %931 = torch.operator "onnx.Reshape"(%928, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %932 = torch.operator "onnx.Reshape"(%929, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %933 = torch.operator "onnx.SimplifiedLayerNormalization"(%931, %80) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %934 = torch.operator "onnx.SimplifiedLayerNormalization"(%932, %81) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %935 = torch.operator "onnx.Reshape"(%933, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %936 = torch.operator "onnx.Reshape"(%934, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %937 = torch.operator "onnx.RotaryEmbedding"(%935, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %938 = torch.operator "onnx.RotaryEmbedding"(%936, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %939:3 = torch.operator "onnx.GroupQueryAttention"(%937, %938, %930, %arg41, %arg42, %530, %525, %927#2, %927#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %940 = torch.operator "onnx.MatMulNBits"(%939#0, %388, %389) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %941:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%927#3, %940, %82) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %942 = torch.operator "onnx.MatMulNBits"(%941#0, %390, %391) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %943 = torch.operator "onnx.MatMulNBits"(%941#0, %392, %393) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %944 = torch.operator "onnx.Sigmoid"(%942) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %945 = torch.operator "onnx.Mul"(%942, %944) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %946 = torch.operator "onnx.Mul"(%945, %943) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %947 = torch.operator "onnx.MatMulNBits"(%946, %394, %395) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %948:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%941#3, %947, %83) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %949 = torch.operator "onnx.MatMulNBits"(%948#0, %396, %397) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %950 = torch.operator "onnx.MatMulNBits"(%948#0, %398, %399) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %951 = torch.operator "onnx.MatMulNBits"(%948#0, %400, %401) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %952 = torch.operator "onnx.Reshape"(%949, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %953 = torch.operator "onnx.Reshape"(%950, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %954 = torch.operator "onnx.SimplifiedLayerNormalization"(%952, %84) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %955 = torch.operator "onnx.SimplifiedLayerNormalization"(%953, %85) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %956 = torch.operator "onnx.Reshape"(%954, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %957 = torch.operator "onnx.Reshape"(%955, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %958 = torch.operator "onnx.RotaryEmbedding"(%956, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %959 = torch.operator "onnx.RotaryEmbedding"(%957, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %960:3 = torch.operator "onnx.GroupQueryAttention"(%958, %959, %951, %arg43, %arg44, %530, %525, %948#2, %948#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %961 = torch.operator "onnx.MatMulNBits"(%960#0, %402, %403) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %962:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%948#3, %961, %86) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %963 = torch.operator "onnx.MatMulNBits"(%962#0, %404, %405) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %964 = torch.operator "onnx.MatMulNBits"(%962#0, %406, %407) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %965 = torch.operator "onnx.Sigmoid"(%963) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %966 = torch.operator "onnx.Mul"(%963, %965) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %967 = torch.operator "onnx.Mul"(%966, %964) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %968 = torch.operator "onnx.MatMulNBits"(%967, %408, %409) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %969:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%962#3, %968, %87) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %970 = torch.operator "onnx.MatMulNBits"(%969#0, %410, %411) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %971 = torch.operator "onnx.MatMulNBits"(%969#0, %412, %413) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %972 = torch.operator "onnx.MatMulNBits"(%969#0, %414, %415) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %973 = torch.operator "onnx.Reshape"(%970, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %974 = torch.operator "onnx.Reshape"(%971, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %975 = torch.operator "onnx.SimplifiedLayerNormalization"(%973, %88) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %976 = torch.operator "onnx.SimplifiedLayerNormalization"(%974, %89) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %977 = torch.operator "onnx.Reshape"(%975, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %978 = torch.operator "onnx.Reshape"(%976, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %979 = torch.operator "onnx.RotaryEmbedding"(%977, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %980 = torch.operator "onnx.RotaryEmbedding"(%978, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %981:3 = torch.operator "onnx.GroupQueryAttention"(%979, %980, %972, %arg45, %arg46, %530, %525, %969#2, %969#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %982 = torch.operator "onnx.MatMulNBits"(%981#0, %416, %417) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %983:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%969#3, %982, %90) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %984 = torch.operator "onnx.MatMulNBits"(%983#0, %418, %419) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %985 = torch.operator "onnx.MatMulNBits"(%983#0, %420, %421) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %986 = torch.operator "onnx.Sigmoid"(%984) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %987 = torch.operator "onnx.Mul"(%984, %986) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %988 = torch.operator "onnx.Mul"(%987, %985) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %989 = torch.operator "onnx.MatMulNBits"(%988, %422, %423) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %990:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%983#3, %989, %91) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %991 = torch.operator "onnx.MatMulNBits"(%990#0, %424, %425) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %992 = torch.operator "onnx.MatMulNBits"(%990#0, %426, %427) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %993 = torch.operator "onnx.MatMulNBits"(%990#0, %428, %429) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %994 = torch.operator "onnx.Reshape"(%991, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %995 = torch.operator "onnx.Reshape"(%992, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %996 = torch.operator "onnx.SimplifiedLayerNormalization"(%994, %92) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %997 = torch.operator "onnx.SimplifiedLayerNormalization"(%995, %93) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %998 = torch.operator "onnx.Reshape"(%996, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %999 = torch.operator "onnx.Reshape"(%997, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %1000 = torch.operator "onnx.RotaryEmbedding"(%998, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1001 = torch.operator "onnx.RotaryEmbedding"(%999, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1002:3 = torch.operator "onnx.GroupQueryAttention"(%1000, %1001, %993, %arg47, %arg48, %530, %525, %990#2, %990#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %1003 = torch.operator "onnx.MatMulNBits"(%1002#0, %430, %431) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1004:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%990#3, %1003, %94) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1005 = torch.operator "onnx.MatMulNBits"(%1004#0, %432, %433) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1006 = torch.operator "onnx.MatMulNBits"(%1004#0, %434, %435) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1007 = torch.operator "onnx.Sigmoid"(%1005) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1008 = torch.operator "onnx.Mul"(%1005, %1007) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1009 = torch.operator "onnx.Mul"(%1008, %1006) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1010 = torch.operator "onnx.MatMulNBits"(%1009, %436, %437) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1011:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1004#3, %1010, %95) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1012 = torch.operator "onnx.MatMulNBits"(%1011#0, %438, %439) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1013 = torch.operator "onnx.MatMulNBits"(%1011#0, %440, %441) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1014 = torch.operator "onnx.MatMulNBits"(%1011#0, %442, %443) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1015 = torch.operator "onnx.Reshape"(%1012, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %1016 = torch.operator "onnx.Reshape"(%1013, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %1017 = torch.operator "onnx.SimplifiedLayerNormalization"(%1015, %96) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %1018 = torch.operator "onnx.SimplifiedLayerNormalization"(%1016, %97) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %1019 = torch.operator "onnx.Reshape"(%1017, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %1020 = torch.operator "onnx.Reshape"(%1018, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %1021 = torch.operator "onnx.RotaryEmbedding"(%1019, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1022 = torch.operator "onnx.RotaryEmbedding"(%1020, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1023:3 = torch.operator "onnx.GroupQueryAttention"(%1021, %1022, %1014, %arg49, %arg50, %530, %525, %1011#2, %1011#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %1024 = torch.operator "onnx.MatMulNBits"(%1023#0, %444, %445) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1025:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1011#3, %1024, %98) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1026 = torch.operator "onnx.MatMulNBits"(%1025#0, %446, %447) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1027 = torch.operator "onnx.MatMulNBits"(%1025#0, %448, %449) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1028 = torch.operator "onnx.Sigmoid"(%1026) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1029 = torch.operator "onnx.Mul"(%1026, %1028) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1030 = torch.operator "onnx.Mul"(%1029, %1027) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1031 = torch.operator "onnx.MatMulNBits"(%1030, %450, %451) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1032:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1025#3, %1031, %99) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1033 = torch.operator "onnx.MatMulNBits"(%1032#0, %452, %453) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1034 = torch.operator "onnx.MatMulNBits"(%1032#0, %454, %455) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1035 = torch.operator "onnx.MatMulNBits"(%1032#0, %456, %457) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1036 = torch.operator "onnx.Reshape"(%1033, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %1037 = torch.operator "onnx.Reshape"(%1034, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %1038 = torch.operator "onnx.SimplifiedLayerNormalization"(%1036, %100) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %1039 = torch.operator "onnx.SimplifiedLayerNormalization"(%1037, %101) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %1040 = torch.operator "onnx.Reshape"(%1038, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %1041 = torch.operator "onnx.Reshape"(%1039, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %1042 = torch.operator "onnx.RotaryEmbedding"(%1040, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1043 = torch.operator "onnx.RotaryEmbedding"(%1041, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1044:3 = torch.operator "onnx.GroupQueryAttention"(%1042, %1043, %1035, %arg51, %arg52, %530, %525, %1032#2, %1032#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %1045 = torch.operator "onnx.MatMulNBits"(%1044#0, %458, %459) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1046:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1032#3, %1045, %102) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1047 = torch.operator "onnx.MatMulNBits"(%1046#0, %460, %461) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1048 = torch.operator "onnx.MatMulNBits"(%1046#0, %462, %463) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1049 = torch.operator "onnx.Sigmoid"(%1047) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1050 = torch.operator "onnx.Mul"(%1047, %1049) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1051 = torch.operator "onnx.Mul"(%1050, %1048) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1052 = torch.operator "onnx.MatMulNBits"(%1051, %464, %465) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1053:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1046#3, %1052, %103) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1054 = torch.operator "onnx.MatMulNBits"(%1053#0, %466, %467) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1055 = torch.operator "onnx.MatMulNBits"(%1053#0, %468, %469) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1056 = torch.operator "onnx.MatMulNBits"(%1053#0, %470, %471) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1057 = torch.operator "onnx.Reshape"(%1054, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %1058 = torch.operator "onnx.Reshape"(%1055, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %1059 = torch.operator "onnx.SimplifiedLayerNormalization"(%1057, %104) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %1060 = torch.operator "onnx.SimplifiedLayerNormalization"(%1058, %105) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %1061 = torch.operator "onnx.Reshape"(%1059, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %1062 = torch.operator "onnx.Reshape"(%1060, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %1063 = torch.operator "onnx.RotaryEmbedding"(%1061, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1064 = torch.operator "onnx.RotaryEmbedding"(%1062, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1065:3 = torch.operator "onnx.GroupQueryAttention"(%1063, %1064, %1056, %arg53, %arg54, %530, %525, %1053#2, %1053#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %1066 = torch.operator "onnx.MatMulNBits"(%1065#0, %472, %473) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1067:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1053#3, %1066, %106) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1068 = torch.operator "onnx.MatMulNBits"(%1067#0, %474, %475) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1069 = torch.operator "onnx.MatMulNBits"(%1067#0, %476, %477) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1070 = torch.operator "onnx.Sigmoid"(%1068) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1071 = torch.operator "onnx.Mul"(%1068, %1070) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1072 = torch.operator "onnx.Mul"(%1071, %1069) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1073 = torch.operator "onnx.MatMulNBits"(%1072, %478, %479) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1074:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1067#3, %1073, %107) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1075 = torch.operator "onnx.MatMulNBits"(%1074#0, %480, %481) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1076 = torch.operator "onnx.MatMulNBits"(%1074#0, %482, %483) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1077 = torch.operator "onnx.MatMulNBits"(%1074#0, %484, %485) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1078 = torch.operator "onnx.Reshape"(%1075, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %1079 = torch.operator "onnx.Reshape"(%1076, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %1080 = torch.operator "onnx.SimplifiedLayerNormalization"(%1078, %108) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %1081 = torch.operator "onnx.SimplifiedLayerNormalization"(%1079, %109) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %1082 = torch.operator "onnx.Reshape"(%1080, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %1083 = torch.operator "onnx.Reshape"(%1081, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %1084 = torch.operator "onnx.RotaryEmbedding"(%1082, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1085 = torch.operator "onnx.RotaryEmbedding"(%1083, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1086:3 = torch.operator "onnx.GroupQueryAttention"(%1084, %1085, %1077, %arg55, %arg56, %530, %525, %1074#2, %1074#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %1087 = torch.operator "onnx.MatMulNBits"(%1086#0, %486, %487) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1088:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1074#3, %1087, %110) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1089 = torch.operator "onnx.MatMulNBits"(%1088#0, %488, %489) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1090 = torch.operator "onnx.MatMulNBits"(%1088#0, %490, %491) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1091 = torch.operator "onnx.Sigmoid"(%1089) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1092 = torch.operator "onnx.Mul"(%1089, %1091) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1093 = torch.operator "onnx.Mul"(%1092, %1090) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1094 = torch.operator "onnx.MatMulNBits"(%1093, %492, %493) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1095:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1088#3, %1094, %111) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1096 = torch.operator "onnx.MatMulNBits"(%1095#0, %494, %495) {torch.onnx.K = 1024 : si64, torch.onnx.N = 2048 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[2048,32,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1097 = torch.operator "onnx.MatMulNBits"(%1095#0, %496, %497) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1098 = torch.operator "onnx.MatMulNBits"(%1095#0, %498, %499) {torch.onnx.K = 1024 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,32,16],ui8>, !torch.vtensor<[32768],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1099 = torch.operator "onnx.Reshape"(%1096, %515) : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %1100 = torch.operator "onnx.Reshape"(%1097, %515) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,128],f16> 
    %1101 = torch.operator "onnx.SimplifiedLayerNormalization"(%1099, %112) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %1102 = torch.operator "onnx.SimplifiedLayerNormalization"(%1100, %113) {torch.onnx.axis = -1 : si64, torch.onnx.epsilon = 9.99999997E-7 : f32, torch.onnx.stash_type = 1 : si64} : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[128],f16>) -> !torch.vtensor<[?,?,128],f16> 
    %1103 = torch.operator "onnx.Reshape"(%1101, %516) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,2048],f16> 
    %1104 = torch.operator "onnx.Reshape"(%1102, %517) : (!torch.vtensor<[?,?,128],f16>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,1024],f16> 
    %1105 = torch.operator "onnx.RotaryEmbedding"(%1103, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,2048],f16> 
    %1106 = torch.operator "onnx.RotaryEmbedding"(%1104, %533, %4, %5) {torch.onnx.interleaved = 0 : si64, torch.onnx.num_heads = 0 : si64, torch.onnx.rotary_embedding_dim = 0 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?],si64>, !torch.vtensor<[40960,64],f16>, !torch.vtensor<[40960,64],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1107:3 = torch.operator "onnx.GroupQueryAttention"(%1105, %1106, %1098, %arg57, %arg58, %530, %525, %1095#2, %1095#2) {torch.onnx.do_rotary = 0 : si64, torch.onnx.kv_num_heads = 8 : si64, torch.onnx.num_heads = 16 : si64, torch.onnx.rotary_interleaved = 0 : si64, torch.onnx.scale = 0.0883883461 : f32, torch.onnx.softcap = 0.000000e+00 : f32} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,1],si32>, !torch.vtensor<[],si32>, !torch.none, !torch.none) -> (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>) 
    %1108 = torch.operator "onnx.MatMulNBits"(%1107#0, %500, %501) {torch.onnx.K = 2048 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,2048],f16>, !torch.vtensor<[1024,64,16],ui8>, !torch.vtensor<[65536],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1109:4 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1095#3, %1108, %114) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> (!torch.vtensor<[?,?,1024],f16>, !torch.none, !torch.none, !torch.vtensor<[?,?,1024],f16>) 
    %1110 = torch.operator "onnx.MatMulNBits"(%1109#0, %502, %503) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1111 = torch.operator "onnx.MatMulNBits"(%1109#0, %504, %505) {torch.onnx.K = 1024 : si64, torch.onnx.N = 3072 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[3072,32,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1112 = torch.operator "onnx.Sigmoid"(%1110) : (!torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1113 = torch.operator "onnx.Mul"(%1110, %1112) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1114 = torch.operator "onnx.Mul"(%1113, %1111) : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[?,?,3072],f16>) -> !torch.vtensor<[?,?,3072],f16> 
    %1115 = torch.operator "onnx.MatMulNBits"(%1114, %506, %507) {torch.onnx.K = 3072 : si64, torch.onnx.N = 1024 : si64, torch.onnx.bits = 4 : si64, torch.onnx.block_size = 32 : si64} : (!torch.vtensor<[?,?,3072],f16>, !torch.vtensor<[1024,96,16],ui8>, !torch.vtensor<[98304],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1116 = torch.operator "onnx.SkipSimplifiedLayerNormalization"(%1109#3, %1115, %115) {torch.onnx.epsilon = 9.99999997E-7 : f32} : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024],f16>) -> !torch.vtensor<[?,?,1024],f16> 
    %1117 = torch.operator "onnx.MatMul"(%1116, %518) : (!torch.vtensor<[?,?,1024],f16>, !torch.vtensor<[1024,151936],f16>) -> !torch.vtensor<[?,?,151936],f16> 
    %1118 = torch.operator "onnx.Cast"(%1117) {torch.onnx.to = 1 : si64} : (!torch.vtensor<[?,?,151936],f16>) -> !torch.vtensor<[?,?,151936],f32> 
    return %1118, %540#1, %540#2, %561#1, %561#2, %582#1, %582#2, %603#1, %603#2, %624#1, %624#2, %645#1, %645#2, %666#1, %666#2, %687#1, %687#2, %708#1, %708#2, %729#1, %729#2, %750#1, %750#2, %771#1, %771#2, %792#1, %792#2, %813#1, %813#2, %834#1, %834#2, %855#1, %855#2, %876#1, %876#2, %897#1, %897#2, %918#1, %918#2, %939#1, %939#2, %960#1, %960#2, %981#1, %981#2, %1002#1, %1002#2, %1023#1, %1023#2, %1044#1, %1044#2, %1065#1, %1065#2, %1086#1, %1086#2, %1107#1, %1107#2 : !torch.vtensor<[?,?,151936],f32>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>, !torch.vtensor<[?,8,?,128],f16>
  }
}

{-#
  dialect_resources: {
    builtin: {
      __model_numpy_helper_TensorProto.INT64_0D_1: "0x080000000100000000000000",
      __model_numpy_helper_TensorProto.INT64_1D_0: "0x080000000000000000000000",
      __model_numpy_helper_TensorProto.INT64_1D__1: "0x08000000FFFFFFFFFFFFFFFF",
      __model_numpy_helper_TensorProto.INT64_1D_1: "0x080000000100000000000000",
      __model_numpy_helper_TensorProto.INT64_1D_0___1__128: "0x080000000000000000000000FFFFFFFFFFFFFFFF8000000000000000",
      __model_numpy_helper_TensorProto.INT64_1D_0___1__2048: "0x080000000000000000000000FFFFFFFFFFFFFFFF0008000000000000",
      __model_numpy_helper_TensorProto.INT64_1D_0___1__1024: "0x080000000000000000000000FFFFFFFFFFFFFFFF0004000000000000"
    }
  }
#-}

