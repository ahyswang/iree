!quant_type = !quant.uniform<i32:f32, 1.0:0>

module {
   func.func @main(%arg0: tensor<10x!quant_type>, %arg1: tensor<10x!quant_type>) -> tensor<10x!quant_type> {
     %0 = tosa.add %arg0, %arg1 : (tensor<10x!quant_type>, tensor<10x!quant_type>) -> tensor<10x!quant_type>
     return %0 : tensor<10x!quant_type>
   }
 }

