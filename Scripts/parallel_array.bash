#!/bin/bash
#$ -t 1-10:1
#$ -cwd
#$ -V
#$ -l h_data=10G
#$ -l h_rt=1:55:00

# INPUT ARGUMENTS
seed=1

slim -d chrom=$SGE_TASK_ID -d init_seed=$seed parallel_simulation.slim

# Uncomment next line if slim is not encoded as executable from command line.
# sed -i -r "s/^1/${SGE_TASK_ID}/g" ${prefix}_chrom_${SGE_TASK_ID}.vcf
