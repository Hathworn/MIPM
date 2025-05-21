#!/bin/bash
#SBATCH -J reduction
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o reduction.%j.o
#SBATCH -e reduction.%j.e 
./reduction







