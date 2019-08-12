#!/bin/bash
#$ -t 420
#$ -cwd
#$ -V
#$ -m a
#$ -l h_data=10G
#$ -l h_rt=23:55:00

# INPUT ARGUMENTS
seed=1
num_ind=8 # Number of samples from single population.
prefix="../Data/TM/1000_seed_${seed}" # Output prefix, and input prefix of given vcf
easySFS_proj=16 # Number of chromosomes that sample is projected down into.

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

slim -d chrom=$SGE_TASK_ID -d init_seed=$seed PG_simulation.slim

# sed -i -r "s/^1/${SGE_TASK_ID}/g" ${prefix}_chrom_${SGE_TASK_ID}.vcf
