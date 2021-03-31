#!/bin/bash
# 2 nodes, 4 tasks per node = 8 cores
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --time=0-12:00:00

# Load required modules
module purge

module load foss/2019b 
module load python/3.7.4 

# Launch multiple process python code
echo "Searching for mentions"
time srun -n 8 python3 twitter_search_541635.py -i minitwitter.csv -m
echo "Searching for topics"
time srun -n 8 python3 twitter_search_541635.py -i minitwitter.csv -t
echo "Searching for the keyword 'jumping'"
time srun -n 8 python3 twitter_search_541635.py -i minitwitter.csv -s jumping
