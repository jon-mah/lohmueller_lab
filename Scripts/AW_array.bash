#! bin/bash
#$ -cwd
#$ -V
#$ -m bea
#$ -t 1-38:1
#$ -l h_data=10G,
#$ -l h_rt=2:00:00

slim -d chrom=$SGE_TASK_ID AW_array_simulation.slim
