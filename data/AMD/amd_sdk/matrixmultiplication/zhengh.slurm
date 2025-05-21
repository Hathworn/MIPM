#!/bin/bash
#SBATCH -J matrixmulplication
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o matrixmulplication.%j.o
#SBATCH -e matrixmulplication.%j.e 
./matrixmulplication --seed 42 --n 128 --m 256 --k 64 --blockSize 16 --iterations 10







