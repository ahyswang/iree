#!/bin/bash

cd /workspace/yswang26/onnx
source /workspace/yswang26/python_env/onnx_venv/bin/activate
pip install -e .
python main.py