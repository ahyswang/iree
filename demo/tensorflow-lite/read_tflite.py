import sys

# 确保生成的 tflite 模块在 Python 路径中
# 如果脚本和 tflite 文件夹在同一目录，这通常不是必需的
sys.path.append('./') 

from tflite.Model import Model

def parse_tflite(tflite_path):
    """
    解析一个 .tflite 文件并打印模型信息。
    """
    try:
        with open(tflite_path, 'rb') as f:
            buf = f.read()
            # 从 buffer 的开头获取根对象 Model
            model = Model.GetRootAs(buf, 0)

        print(f"TFLite Model Version: {model.Version()}")
        print(f"Description: {model.Description().decode('utf-8') if model.Description() else 'N/A'}")

        # 检查 OperatorCodes
        num_operator_codes = model.OperatorCodesLength()
        print(f"Number of Operator Codes: {num_operator_codes}")

        # 检查 Subgraphs
        num_subgraphs = model.SubgraphsLength()
        print(f"Number of Subgraphs: {num_subgraphs}")

        if num_subgraphs > 0:
            # 获取主子图 (通常是第一个)
            main_subgraph = model.Subgraphs(0)
            print("\n--- Main Subgraph ---")
            print(f"Name: {main_subgraph.Name().decode('utf-8') if main_subgraph.Name() else 'N/A'}")
            print(f"Number of Tensors: {main_subgraph.TensorsLength()}")
            print(f"Number of Inputs: {main_subgraph.InputsLength()}")
            print(f"Number of Outputs: {main_subgraph.OutputsLength()}")
            print(f"Number of Operators: {main_subgraph.OperatorsLength()}")

    except FileNotFoundError:
        print(f"Error: File not found at {tflite_path}")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: python read_tflite.py <path_to_model.tflite>")
    else:
        parse_tflite(sys.argv[1])