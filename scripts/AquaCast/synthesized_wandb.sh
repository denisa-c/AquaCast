#!/bin/bash
set -e

seq_len=""

for arg in "$@"; do
    case $arg in
        seq_len=*)
            seq_len="${arg#seq_len=}"
            ;;
    esac
done

if [ -z "$seq_len" ]; then
    echo "Error: seq_len was not passed"
    echo "Received args: $@"
    exit 1
fi

target_node=node_8711_output
data_version=2_1_1
model_name=AquaCast
pred_len=96
features=M
d_model=32

mkdir -p logs/synthesized_${data_version}/${target_node}

python run_longExp.py \
  --random_seed 2021 \
  --is_training 1 \
  --root_path /home/abgo/Data/synthesized/ \
  --data_path synthesized_v2_1_1.csv \
  --model_id synthesized_v2_1_1_${seq_len}_${pred_len} \
  --model ${model_name} \
  --data custom_exo \
  --features ${features} \
  --target ${target_node} \
  --seq_len ${seq_len} \
  --pred_len ${pred_len} \
  --label_len 0 \
  --enc_in 101 \
  --exo \
  --exo_future \
  --e_layers 3 \
  --n_heads 2 \
  --d_model ${d_model} \
  --d_ff 128 \
  --dropout 0.5 \
  --stride 2 \
  --des Exp_exo \
  --lradj constant \
  --learning_rate 0.0001 \
  --train_epochs 100 \
  --patience 10 \
  --gpu 0 \
  --itr 1 \
  --batch_size 32 \
  > logs/synthesized_${data_version}/${target_node}/${model_name}_synthesized_v${data_version}_${seq_len}_${pred_len}_ftr${features}_exo_exo_future_dm${d_model}.log 2>&1