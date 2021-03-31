#!/bin/bash

#SBATCH --ntasks=1

srun sleep 10 & 
srun sleep 12 &
wait
