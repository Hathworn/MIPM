#!/bin/bash
#SBATCH -J dwthaar1d
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o dwthaar1d.%j.o
#SBATCH -e dwthaar1d.%j.e 
./dwthaar1d -l 2048  -i 10







