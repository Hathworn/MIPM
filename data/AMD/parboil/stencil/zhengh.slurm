#!/bin/bash
#SBATCH -J zhengh
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o test.%j.o
#SBATCH -e test.%j.e 
./main 128 128 32 100 -i  /public/home/dtune/zhengh/datasets/stencil/small/input/128x128x32.bin -o output32.out







