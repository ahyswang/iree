module {
  func.func @main(%arg0: tensor<1x2x2x1xi8> {ml_program.identifier = "input_0"}) -> (tensor<1x2x2x1xi8> {ml_program.identifier = "output"}) {
    %0 = "tosa.const"() <{value = dense<1> : tensor<1x2x2x1xi8>}> : () -> tensor<1x2x2x1xi8>
    %1 = tosa.custom %arg0, %0 {domain_name = "TFL", implementation_attrs = "my_attr_str\00\05hello\00my_attr_int\00input0_scale\00input0_zp\00input1_scale\00input1_zp\00output_scale\00output_zp\00\08F:1%Vj\1E\12\00\00\00\0B\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\9A\99\99\99\99\99\C9?\00\00\00\00\00\00\00\00\9A\99\99\99\99\99\C9?\00\00\00\00\00\00\00\00{\00\00\00\00\00\00\00\A3\00\00\00\00\00\00\00\00\00\00\00\00\00\E0?\00\00\00\00\00\00\00\00\0F\07\0F\07\07\14\0F\07H'\01", operator_name = "MyAdd"} : (tensor<1x2x2x1xi8>, tensor<1x2x2x1xi8>) -> tensor<1x2x2x1xi8>
    return %1 : tensor<1x2x2x1xi8>
  }
}

