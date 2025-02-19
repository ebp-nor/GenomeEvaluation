#!/bin/bash
##This is the master script for submitting jobs to preprocess reads to the grid

##Eventually change the name below
#SBATCH --job-name=annotation_pipeline
#SBATCH --account=project
#SBATCH --time=167:0:0
##SBATCH --partition=bigmem
#SBATCH --mem-per-cpu=1G
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
##SBATCH --cpus-per-task=64

#load conda environment

conda activate eval_pipeline



snakemake \
  --profile /cluster/projects/nn8013k/opt/evaluation_pipeline/GenomeEvaluation/workflow/profile/ \
  --configfile $1 \
  --directory . \
  --snakefile /cluster/projects/nn8013k/opt/evaluation_pipeline/GenomeEvaluation/workflow/Snakefile \
  --max-status-checks-per-second 0.01 \
  all

