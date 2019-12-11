# -*- coding: utf-8 -*-
repo_path=/content/mydrive/COMP551A4/glyce/glyce

data_sign=resume_ner
data_dir=/content/mydrive/COMP551A4/glyce/NER/resume
output_dir=/content/mydrive/COMP551A4/glyce/train_log # change save_path !!!

config_path=/content/mydrive/COMP551A4/glyce/glyce/configs/glyce_bert.json
bert_model=/content/mydrive/COMP551A4/glyce/glyce/models/BERT_pretrained_chinese/chinese_L-12_H-768_A-12
checkpoint=100

task_name=ner
max_seq_len=128
train_batch=32
dev_batch=32
test_batch=8
learning_rate=2e-5
num_train_epochs=4
warmup=0.1
local_rank=-1
seed=3306

python3 /content/drive/My\ Drive/COMP551A4/glyce/glyce/bin/run_bert_glyce_tagger.py \
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

