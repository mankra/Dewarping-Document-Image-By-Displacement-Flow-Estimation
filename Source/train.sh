#!/bin/sh

OUTPUT_PATH='train_output'

TRAIN_SET='dataset/train/forms/color'
VALIDATE_SET='dataset/train/forms/color'
TEST_SET='dataset/small_test'

CHECKPOINT='/media/sf_vbshare/2019-06-25 11_52_54flat_img_classifyAndRegress_grey-data1024_greyV2.pkl'

rm -rf "$OUTPUT_PATH"

# Train on forms
python3 ./train.py \
  --data_path_train "$TRAIN_SET" \
  --data_path_validate "$VALIDATE_SET" \
  --data_path_test "$TEST_SET" \
  --output-path "$OUTPUT_PATH" \
  --resume "$CHECKPOINT"\
  --schema 'train'  \
  --n_epoch '51'
