#!/bin/bash
#SBATCH -J vectoradd
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o vectoradd.%j.o
#SBATCH -e vectoradd.%j.e 
./vectoradd --verify







