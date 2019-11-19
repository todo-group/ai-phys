#!/bin/bash

# Example for serial execution

#SBATCH --partition=batch       ## partition (queue) name
#SBATCH --job-name=serial
#SBATCH --output=%x-%j.out      ## %x will be replaced by jobname 
#SBATCH --error=%x-%j.err       ## %j will be replaced by jobid
#SBATCH --ntasks=1              ## number of tasks (processes)
#SBATCH --time=1:00:00          ## hour:min:sec

srun a.out
