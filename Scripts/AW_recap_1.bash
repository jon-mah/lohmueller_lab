#!/bin/bash
#$ -cwd
#$ -V
#$ -m bea
#$ -l h_data=5G
#$ -l h_rt=12:00:00

# INPUT ARGUMENTS
num_ind=15 # Number of samples from single population.
prefix="../Data/AW_recap/seed_1" # Output prefix, and input prefix of given vcf
easySFS_proj=30 # Number of chromosomes that sample is projected down into.

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

slim AW_recap_trees.slim # Run slim file to generate `.trees`.
python AW_recap_python.py # Run python file to recapitate.
slim AW_recap_vcf.slim # Run slim file to generate `.vcf`.

# Separate input `.vcf` file into synonymous and nonsynonymous.
grep "#\|;MT=1" ${prefix}.vcf > $syn_inputvcf
grep "#\|;MT=2" ${prefix}.vcf > $nonsyn_inputvcf

# Write pops_file.txt for easySFS.py.
python write_pops_file.py $num_ind 0 ${prefix}_syn
python write_pops_file.py $num_ind 0 ${prefix}_nonsyn

# Use easySFS.py to compute synonymous and nonsynonymous sfs.
# python easySFS.py -i $syn_inputvcf -p $syn_output_pops_file -o $syn_easySFS_outdir -f -a --proj $easySFS_proj
# python easySFS.py -i $nonsyn_inputvcf -p $nonsyn_output_pops_file -o $nonsyn_easySFS_outdir -f -a --proj $easySFS_proj

# Use fitdadi_infer_DFE.py to infer DFE for given synonymous and nonsynonymous sfs.
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "AW"
