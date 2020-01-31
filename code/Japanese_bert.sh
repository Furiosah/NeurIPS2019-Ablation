# -*- coding: utf-8 -*-
repo_path=/content/mydrive/COMP551A4/glyce

data_sign=Japanese_pos
data_dir=/content/mydrive/COMP551A4/glyce/japanese/POS
output_dir=/content/mydrive/COMP551A4/glyce/train_log # change save_path !!!

config_path=/content/mydrive/COMP551A4/glyce/glyce/configs/bert.json
bert_model=/content/mydrive/COMP551A4/glyce/japanese/multi_cased_L-12_H-768_A-12
checkpoint=100

task_name=pos
max_seq_len=128
train_batch=32
dev_batch=32
test_batch=8
learning_rate=1e-4
num_train_epochs=100
warmup=0.1
local_rank=-1
seed=3306

python3 /content/mydrive/COMP551A4/glyce/glyce/bin/run_bert_tagger.py \
--data_sign ${data_sign} \
--config_path ${config_path} \
--data_dir ${data_dir} \
--bert_model ${bert_model} \
--task_name ${task_name} \
--max_seq_length ${max_seq_len} \
--do_train \
--do_eval \
--train_batch_size ${train_batch} \
--dev_batch_size ${dev_batch} \
--test_batch_size ${test_batch} \
--learning_rate ${learning_rate} \
--num_train_epochs ${num_train_epochs} \
--checkpoint ${checkpoint} \
--warmup_proportion ${warmup} \
--output_dir ${output_dir} 

