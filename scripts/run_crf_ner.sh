#!/bin/bash

DATA_DIR='../datasets/Parsner/'
MODEL_TYPE='roberta'
MODEL_NAME_OR_PATH='roberta-base'
OUTPUT_DIR='../outputs/'
LABEL='../datasets/Parsner/labels.txt'

CUDA_VISIBLE_DEVICES='0' python ../examples/run_crf_ner.py \
--data_dir $DATA_DIR \
--model_type $MODEL_TYPE \
--model_name_or_path $MODEL_NAME_OR_PATH \
--output_dir $OUTPUT_DIR \
--labels $LABEL \
--overwrite_output_dir \
--do_train \
--do_eval \
--evaluate_during_training \
--adv_training fgm \
--num_train_epochs 1 \
--max_seq_length 128 \
--logging_steps 0.2 \
--per_gpu_train_batch_size 16 \
--per_gpu_eval_batch_size 16 \
--learning_rate 5e-5 \
--bert_lr 5e-5 \
--classifier_lr  5e-5 \
--crf_lr  1e-3