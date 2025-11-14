import argparse
import inspect
from pathlib import Path
import re
import sys

if __name__ == "__main__":

    result_path = sys.argv[1]
    output_path = sys.argv[2]

    from tensorflow.python import pywrap_mlir
    run_pass_pipeline = pywrap_mlir.experimental_run_pass_pipeline
    write_bytecode = pywrap_mlir.experimental_write_bytecode

    print(result_path, output_path)
    pipeline = ["tf-lower-to-mlprogram-and-hlo"]
    with open(result_path, "r") as f:
        result = f.read()

    result = run_pass_pipeline(result, ",".join(pipeline), show_debug_info=False)
    write_bytecode(output_path, result)