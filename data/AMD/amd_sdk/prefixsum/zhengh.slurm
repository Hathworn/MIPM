#!/bin/bash
#SBATCH -J prefixsum
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o prefixsum.%j.o
#SBATCH -e prefixsum.%j.e 
./prefixsum --seed 456 --length 128 --iterations 10







