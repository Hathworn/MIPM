#!/bin/bash
#SBATCH -J histogram
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o histogram.%j.o
#SBATCH -e histogram.%j.e 
./histogram --verify







