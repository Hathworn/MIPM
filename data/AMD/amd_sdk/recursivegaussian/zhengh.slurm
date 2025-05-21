#!/bin/bash
#SBATCH -J recursivegaussian
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o recursivegaussian.%j.o
#SBATCH -e recursivegaussian.%j.e 
./recursivegaussian --verify







