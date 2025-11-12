import os
os.environ["CUDA_VISIBLE_DEVICES"] = "-1"

import tensorflow.compat.v2 as tf
loaded_model = tf.saved_model.load('./mobilenet-v2-tensorflow2-tf2-preview-classification-v4')
print("Available signatures:", list(loaded_model.signatures.keys()))

import tensorflow.compat.v2 as tf
loaded_model = tf.saved_model.load('./mobilenet-v2-tensorflow2-tf2-preview-classification-v4')
call = loaded_model.__call__.get_concrete_function(
         tf.TensorSpec([1, 224, 224, 3], tf.float32))
signatures = {'predict': call}
tf.saved_model.save(loaded_model,
  './resaved_model', signatures=signatures)

import tensorflow.compat.v2 as tf
loaded_model = tf.saved_model.load('./resaved_model')
print("Available signatures:", list(loaded_model.signatures.keys()))