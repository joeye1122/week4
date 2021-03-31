#!/bin/bash
#SBATCH --time=0-12:00:00

# Load required modules
module purge

module load foss/2019b 
module load python/3.7.4 

# Launch multiple process python code
echo "Searching for mentions"
time srun -n 1 python3 "./twitter_search_541635.py" -i minitwitter.csv
echo "Searching for topics"
time srun -n 1 python3 "./twitter_search_541635.py" -i minitwitter.csv
echo "Searching for the keyword 'jumping'"
time srun -n 1 python3 "./twitter_search_541635.py" -i minitwitter.csv
