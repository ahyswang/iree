
"""
# This module contains tests for the safetensors library.
# Documentation: 
# https://hugging-face.cn/docs/safetensors/index
# pip install safetensors
"""

import torch
from safetensors.torch import save_file

tensors = {
    "embedding": torch.zeros((2, 2)),
    "attention": torch.zeros((2, 3))
}
save_file(tensors, "model.safetensors")

#loaded_tensors = torch.load("model.safetensors", weights_only=True)

from safetensors import safe_open

new_tensors = {}
with safe_open("model.safetensors", framework="pt", device="cpu") as f:
    for k in f.keys():
        new_tensors[k] = f.get_tensor(k)

assert tensors["embedding"].equal(new_tensors["embedding"])
assert tensors["attention"].equal(new_tensors["attention"])

# 
from safetensors import safe_open
import numpy as np

tensors = {
    "a0": torch.from_numpy(np.array([0,1,2,3], dtype=np.int64)),
    "a1": torch.from_numpy(np.array([4, 5, 6, 7], dtype=np.int64))
}
save_file(tensors, "parameters_a_new.safetensors")

tensors = {
    "b0": torch.from_numpy(np.array([8,9,10,11,12,13,14,15], dtype=np.int64)),
    "b1": torch.from_numpy(np.array([16,17,18,19,20,21,22,23], dtype=np.int64))
}
save_file(tensors, "parameters_b_new.safetensors")