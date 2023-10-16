#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --qos=gpu
#SBATCH --ntasks=4
#SBATCH --gres=gpu:1

module load cuda

export CUDA_VISIBLE_DEVICES=0

./Meshroom-2023.2.0-av3.1.0-centos7-cuda11.3.1/meshroom_batch \ ## call the meshroom working pipeline
--input ./photos \ ## state the image folder
--cache ./ \ ## store the intermediate outputs, OPTIONAL
--output ./photos/output ## store the rendered model
