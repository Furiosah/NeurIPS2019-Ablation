#!/usr/bin/env bash 
# -*- coding: utf-8 -*- 




# Author: Xiaoy LI 
# Last update: 2019.03.20 
# First create: 2019.03.23 
# Description:
# ctb6_chinese_word_segmentation 



repo_path=/content/mydrive/COMP551A4/glyce/glyce



data_sign=resume_ner
data_dir=/content/mydrive/COMP551A4/glyce/NER/resume
config_path=/content/mydrive/COMP551A4/glyce/glyce/configs/bert.json
bert_model=/content/mydrive/COMP551A4/glyce/glyce/models/BERT_pretrained_chinese/chinese_L-12_H-768_A-12
task_name=ner
output_dir=/content/mydrive/COMP551A4/glyce/train_log
max_seq_len=150
train_batch=32
dev_batch=64
test_batch=64 
learning_rate=3e-5
num_train_epochs=12
warmup=0.2
local_rank=-1
seed=3307
checkpoint=100

python3 /content/drive/My\ Drive/COMP551A4/glyce/glyce/bin/run_bert_tagger.py \
--data_sign ${data_sign} \
--config_path ${config_path} \
--data_dir ${data_dir} \
--output_dir ${output_dir} \
--bert_model ${bert_model} \
--task_name ${task_name} \
--max_seq_length ${max_seq_len} \
--do_train \
--seed ${seed} \
--do_eval \
--train_batch_size ${train_batch} \
--dev_batch_size ${dev_batch} \
--test_batch_size ${test_batch} \
--learning_rate ${learning_rate} \
--num_train_epochs ${num_train_epochs} \
--checkpoint ${checkpoint}  \
--warmup_proportion ${warmup}

