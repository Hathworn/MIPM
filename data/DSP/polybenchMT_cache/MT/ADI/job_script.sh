#!/bin/bash
#SBATCH -N 1                # Use 1 node
#SBATCH -n 16               # Use 16 processes
#SBATCH -p thmt1            # Use thmt1 queue
#SBATCH --output=slurm_job_output.txt # Direct output to a file
./adi
