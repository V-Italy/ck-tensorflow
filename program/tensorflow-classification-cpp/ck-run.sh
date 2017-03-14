#! /bin/bash
MODEL=$CK_ENV_DATASET_TENSORFLOW_AUX/tensorflow_inception_graph.pb
LABELS=$CK_ENV_DATASET_TENSORFLOW_AUX/imagenet_comp_graph_label_strings.txt
IMAGE=$CK_ENV_MODEL_TENSORFLOW/cropped_panda.jpg

if [ ! -z ${CK_TF_MODEL} ]; then
    MODEL=${CK_TF_MODEL}
fi
if [ ! -z ${CK_TF_LABELS} ]; then
    LABELS=${CK_TF_LABELS}
fi
if [ ! -z ${CK_TF_IMAGE} ]; then
    IMAGE=${CK_TF_IMAGE}
fi


cd ${CK_ENV_LIB_TF}/src && bazel-bin/tensorflow/examples/label_image/label_image --graph=${MODEL} --labels=${LABELS} --image=${IMAGE}
