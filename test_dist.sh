#!/bin/bash

#GPU_NUM=0
#CFG=$2
#DATASETS=$3
#OUTPUT_DIR=$4
#NNODES=${NNODES:-1}
#NODE_RANK=${NODE_RANK:-0}
#PORT=${PORT:-29500}
#MASTER_ADDR=${MASTER_ADDR:-"127.0.0.1"}
CFG="config/cfg_odvg.py"
DATASETS="config/datasets_mixed_odvg.json"
OUTPUT_DIR="./output"

export CUDA_VISIBLE_DEVICES=0

python main.py \
        --output_dir ${OUTPUT_DIR} \
        --eval \
        -c ${CFG} \
        --datasets ${DATASETS}  \
        --pretrain_model_path groundingdino_swint_ogc.pth \
        --options text_encoder_type="bert"
