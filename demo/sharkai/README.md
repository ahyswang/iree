## 说明 


```
python -m venv /workspace/yswang26/python_env/amd-shark-ai
source /workspace/yswang26/python_env/amd-shark-ai/
source /workspace/yswang26/python_env/amd-shark-ai/bin/activate
python --version
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
pip install --upgrade pip
#fix: package error.
#pip install amdshark-ai[apps]
pip install shark-ai[apps]
```