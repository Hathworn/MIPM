#!/bin/bash
#SBATCH -J fastwalshtransform
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o fastwalshtransform.%j.o
#SBATCH -e fastwalshtransform.%j.e 
./fastwalshtransform 623 2048 10







