// RUN: iree-compile %s \
// RUN:     --iree-hal-target-device=local \
// RUN:     --iree-hal-local-target-device-backends=vmvx | \
// RUN: iree-run-module \
// RUN:     --device=local-sync \
// RUN:     --module=$IREE_BINARY_DIR/samples/custom_module/dynamic/module$IREE_DYLIB_EXT@create_custom_module \
// RUN:     --module=- \
// RUN:     --function=main | \
// RUN: FileCheck %s

// RUN: ( iree-compile %s \
// RUN:     --iree-hal-target-device=local \
// RUN:     --iree-hal-local-target-device-backends=vmvx | \
// RUN: iree-run-module \
// RUN:     --device=local-sync \
// RUN:     --module=$IREE_BINARY_DIR/samples/custom_module/dynamic/module$IREE_DYLIB_EXT@create_custom_module \
// RUN:     --module=- \
// RUN:     --function=error 2>&1 || [[ $? == 1 ]] ) | \
// RUN: FileCheck %s --check-prefix=CERROR

module @example {
  //===--------------------------------------------------------------------===//
  // Imports
  //===--------------------------------------------------------------------===//
  // External function declarations for the methods implemented in the custom
  // module C++ file. Note that they are prefixed with the `custom.` module
  // name.

  // Creates a new string with contents from the given tensor.
  // This is silly. Don't do this :)
  func.func private @custom.string.from_tensor(tensor<?xi8>) -> !custom.string

  // Prints the contents of the string to stdout.
  func.func private @custom.string.print(!custom.string)

  // Always returns unknown status with a custom annotation.
  func.func private @custom.error()

  func.func private @custom.custom.add(tensor<?xi8>, tensor<?xi8>, tensor<?xi8>)
  func.func private @nebula.add(tensor<?xi8>, tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>
  func.func private @nebula.add_scalar(i32, i32) -> i32
  //===--------------------------------------------------------------------===//
  // Sample methods
  //===--------------------------------------------------------------------===//
  // Note that there can be any number of publicly-exported methods; this simple
  // sample just has one to keep things simple.

  // CHECK-LABEL: EXEC @main
  func.func @main() {
    // Create string from a byte buffer encoding the characters.
    %0 = util.unfoldable_constant dense<[0, 1, 2, 3, 4]> : tensor<5xi8>

    // call linalg.add
    %add1 = tensor.empty() : tensor<5xi8>
    %add2 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} ins(%0, %0 : tensor<5xi8>, tensor<5xi8>) outs(%add1 : tensor<5xi8>) {
    ^bb0(%in: i8, %in_0: i8, %out: i8):
      %6 = arith.addi %in, %in_0 : i8
      linalg.yield %6 : i8
    } -> tensor<5xi8>
    %add2_arg = tensor.cast %add2 : tensor<5xi8> to tensor<?xi8>
    // CHECK-NEXT: CREATE 5xi8=0 1 2 3 4
    %result0_str = call @custom.string.from_tensor(%add2_arg) : (tensor<?xi8>) -> !custom.string
    call @custom.string.print(%result0_str) : (!custom.string) -> ()

    // call nebula.add
    %cst0 = arith.constant 0 : index
    %dim = tensor.dim %add2, %cst0 : tensor<5xi8>
    %result = tensor.empty(%dim) : tensor<?xi8>

    %arg = tensor.cast %0 : tensor<5xi8> to tensor<?xi8>
    %result_2 = call @nebula.add(%arg, %arg, %result) : (tensor<?xi8>, tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>

    %result1_arg = tensor.cast %result : tensor<?xi8> to tensor<?xi8>
    // CHECK-NEXT: CREATE 5xi8=0 1 2 3 4
    %result1_str = call @custom.string.from_tensor(%result1_arg) : (tensor<?xi8>) -> !custom.string
    call @custom.string.print(%result1_str) : (!custom.string) -> ()

    // Test scalar addition
    %scalar_val_0 = arith.constant 100 : i32
    %scalar_val_1 = arith.constant 200 : i32 
    %scalar_val_res = call  @nebula.add_scalar(%scalar_val_0, %scalar_val_1) : (i32, i32) -> i32

    return
  }

  // CERROR-LABEL: EXEC @error
  func.func @error() {
    // Show an example of emitting an error
    // CERROR-NEXT: UNKNOWN
    call @custom.error() : () -> ()
    return
  }

}
