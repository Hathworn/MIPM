#!/bin/bash
#SBATCH -J zhengh
#SBATCH -p normal
#SBATCH -N 10
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o test.%j.o
#SBATCH -e test.%j.e 
./main 32 0  -i /public/home/dtune/zhengh/datasets/mri-gridding/small/input/small.uks -o output.txt







