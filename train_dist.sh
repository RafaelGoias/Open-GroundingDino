#!/bin/bash

CFG="config/cfg_odvg.py"
DATASETS="config/datasets_mixed_odvg.json"
OUTPUT_DIR="../output"

# Definir a variável de ambiente para CUDA
export CUDA_VISIBLE_DEVICES=0

python main.py \
  --config_file ${CFG} \
  --datasets ${DATASETS} \
  --output_dir ${OUTPUT_DIR} \
  --pretrain_model_path groundingdino_swint_ogc.pth \
  --options text_encoder_type="bert"
