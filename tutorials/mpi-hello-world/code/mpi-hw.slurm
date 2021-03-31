#!/bin/bash

#SBATCH --job-name=youjobname

#SBATCH --ntasks=2

#SBATCH --nodes=2

srun -n 2 ./mpi-hello-world


