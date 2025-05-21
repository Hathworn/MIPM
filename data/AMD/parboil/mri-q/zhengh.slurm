#!/bin/bash
#SBATCH -J zhengh
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o test.%j.o
#SBATCH -e test.%j.e 
./main -i /public/home/dtune/zhengh/datasets/mri-q/small/input/32_32_32_dataset.bin -o output32.out







