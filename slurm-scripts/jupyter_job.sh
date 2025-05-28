#!/bin/bash
#SBATCH --ntasks 1    		                # Number of tasks to run
#SBATCH --cpus-per-task=32                  # CPU cores/threads
#SBATCH --gres=gpu:1       	                # Number of GPUs (per node)
#SBATCH --mem 128000        	                # Reserve 128 GB RAM for the job
#SBATCH --time 7-00:00    	                # Max Runtime in D-HH:MM
#SBATCH --partition liv.p    	            # Partition to submit to
#SBATCH --output /scratch/kapil/slurm-jupyter.out   # File to which STDOUT will be written, %j inserts jobid
#SBATCH --error /scratch/kapil/slurm-jupyter.err  	# File to which STDERR will be written, %j inserts jobid
#SBATCH --nodelist dizzy                     # run only on dizzy

# activate env
source /home/kapilg/.local/share/virtualenvs/sam2-figures-new-Bvxz5dCi/bin/activate

# go to the correct directory
cd /home/kapilg/projects/sam2-figures-new/

# run notebook
jupyter notebook --no-browser --port=9585 --NotebookApp.iopub_data_rate_limit=1.0e10

# deactivate environment
exit
