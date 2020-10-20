#!/bin/bash
#$ -cwd
#$ -V
#$ -m bea
#$ -l h_data=1G
#$ -l h_rt=04:00:00
#$ -l h_vmem=50G

# INPUT ARGUMENTS
seed=1
num_ind=8 # Number of samples from single population.
easySFS_proj=16 # Number of chromosomes that sample is projected down into.
prefix="../Data/no_demo_fast_recomb_array/300_seed_${seed}" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"
