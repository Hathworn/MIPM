#!/bin/bash
#SBATCH -J dct
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o dct.%j.o
#SBATCH -e dct.%j.e 
./dct -w 512  -h 512 -i 10 -s 345







