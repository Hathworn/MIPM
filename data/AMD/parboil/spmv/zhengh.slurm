#!/bin/bash
#SBATCH -J zhengh
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o test.%j.o
#SBATCH -e test.%j.e 
./main -i /public/home/dtune/zhengh/datasets/spmv/small/input/1138_bus.mtx,/public/home/dtune/zhengh/datasets/spmv/small/input/vector.bin  -o output.mtx.out







