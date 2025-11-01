import iree.runtime as rt
import numpy as np

def testParameterIndexBasic():
    parameter_index = rt.ParameterIndex()
    print(dir(parameter_index))
    parameter_index.add_buffer("weight", np.zeros([32, 16]) + 2.0)
    parameter_index.add_buffer("bias", np.zeros([32, 16]) + 0.5)
    parameter_index.create_archive_file("parameters.irpa")

    parameter_index = rt.ParameterIndex()
    parameter_index.load("parameters.irpa")
    print("after load paramter:\n", parameter_index)

def testParameterIndexEntryFromToNumpy():
    array = np.array([[1, 2], [3, 4]], dtype=np.int32)
    index = rt.ParameterIndex()
    key = "key"
    rt.parameter_index_add_numpy_ndarray(index, key, array)
    print(index)
    assert index.items()[0][0] == key
    index_entry_as_array = rt.parameter_index_entry_as_numpy_ndarray(
        index.items()[0][1]
    )
    np.testing.assert_equal(index_entry_as_array, array)

testParameterIndexBasic()
testParameterIndexEntryFromToNumpy()
