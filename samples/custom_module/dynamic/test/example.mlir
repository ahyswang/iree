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
  func.func private @nebula.add_list(!util.list<i32>, !util.list<i32>) -> i32
  //===--------------------------------------------------------------------===//
  // Sample methods
  //===--------------------------------------------------------------------===//
  // Note that there can be any number of publicly-exported methods; this simple
  // sample just has one to keep things simple.

  // CHECK-LABEL: EXEC @main
  func.func @main() {
    // Create string from a byte buffer encoding the characters.
    %hello_bytes = util.unfoldable_constant dense<[0, 1, 2, 3, 4]> : tensor<5xi8>
    %hello_arg = tensor.cast %hello_bytes : tensor<5xi8> to tensor<?xi8>
    // CHECK-NEXT: CREATE 5xi8=0 1 2 3 4
    %hello_str = call @custom.string.from_tensor(%hello_arg) : (tensor<?xi8>) -> !custom.string

    // Print the string to stdout.
    // CHECK-NEXT: PRINT 5xi8=0 1 2 3 4
    call @custom.string.print(%hello_str) : (!custom.string) -> ()

    %cst0 = arith.constant 0 : index
    %dim = tensor.dim %hello_arg, %cst0 : tensor<?xi8>
    %result = tensor.empty(%dim) : tensor<?xi8>

    //call @custom.custom.add(%hello_arg, %hello_arg, %result) : (tensor<?xi8>, tensor<?xi8>, tensor<?xi8>) -> ()
    %hello_result = call @nebula.add(%hello_arg, %hello_arg, %result) : (tensor<?xi8>, tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>

    %result_arg = tensor.cast %result : tensor<?xi8> to tensor<?xi8>
    // CHECK-NEXT: CREATE 5xi8=0 1 2 3 4
    %result_str = call @custom.string.from_tensor(%result_arg) : (tensor<?xi8>) -> !custom.string
    call @custom.string.print(%result_str) : (!custom.string) -> ()

    // Test scalar addition
    %scalar_val_0 = arith.constant 100 : i32
    %scalar_val_1 = arith.constant 200 : i32 
    %scalar_val_res = call  @nebula.add_scalar(%scalar_val_0, %scalar_val_1) : (i32, i32) -> i32

    // Test list addition
    %cap = arith.constant 1 : index
    %lst = util.list.create %cap : !util.list<i32>
    util.list.resize %lst, %cap : !util.list<i32>
    %idx0 = arith.constant 0 : index
    %val0 = arith.constant 10 : i32
    util.list.set %lst[%idx0], %val0 : i32 -> !util.list<i32>

    %ret2 = call @nebula.add_list(%lst, %lst) : (!util.list<i32>, !util.list<i32>) -> i32   // TODO: i8 -> i32 

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
