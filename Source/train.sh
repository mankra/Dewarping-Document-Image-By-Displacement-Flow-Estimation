#!/bin/sh

rm -rf 'train_ouptut'

# Train on forms
python3 ./train.py \
  --data_path_train 'dataset/train/forms/color' \
  --data_path_validate 'dataset/train/forms/color' \
  --data_path_test 'dataset/small_test' \
  --output-path 'train_output' \
  --resume '/media/sf_vbshare/2019-06-25 11_52_54flat_img_classifyAndRegress_grey-data1024_greyV2.pkl' \
  --schema 'train'  \
  --n_epoch '50'
