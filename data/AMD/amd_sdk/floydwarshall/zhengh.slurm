#!/bin/bash
#SBATCH -J floydwarshall
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o floydwarshall.%j.o
#SBATCH -e floydwarshall.%j.e 
./floydwarshall --seed 456 --numNodes 512 --iterations 10  --blockSize 32







