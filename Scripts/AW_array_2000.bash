#!/bin/bash
#$ -t 1-38:1
#$ -cwd
#$ -V
#$ -m a
#$ -l h_data=10G
#$ -l h_rt=02:00:00

# INPUT ARGUMENTS
num_ind=15 # Number of samples from single population.
prefix="../Data/AW_array_2000/seed_1" # Output prefix, and input prefix of given vcf
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

slim -d chrom=$SGE_TASK_ID AW_array_2000_simulation.slim

sed -i -r "s/^1/${SGE_TASK_ID}/g" ${prefix}_chrom_${SGE_TASK_ID}.vcf

if [ "$SGE_TASK_ID" -eq 1 ]
then
  cp ${prefix}_chrom_1.vcf ${prefix}.vcf
fi

if [ "$SGE_TASK_ID" -eq 38 ]
then
  for i in {2..38}
  do
    grep ";MT=1\|;MT=2" ${prefix}_chrom_${i}.vcf >> ${prefix}.vcf
  done
  # Separate input `.vcf` file into synonymous and nonsynonymous.
  grep "#\|;MT=1" ${prefix}.vcf > $syn_inputvcf
  grep "#\|;MT=2" ${prefix}.vcf > $nonsyn_inputvcf
  # Write pops_file.txt for easySFS.py.
  python write_pops_file.py $num_ind 0 ${prefix}_syn
  python write_pops_file.py $num_ind 0 ${prefix}_nonsyn
  # Use easySFS.py to compute synonymous and nonsynonymous sfs.
  python easySFS.py -i $syn_inputvcf -p $syn_output_pops_file -o $syn_easySFS_outdir -f -a --proj $easySFS_proj
  python easySFS.py -i $nonsyn_inputvcf -p $nonsyn_output_pops_file -o $nonsyn_easySFS_outdir -f -a --proj $easySFS_proj
  # Use fitdadi_infer_DFE.py to infer DFE for given synonymous and nonsynonymous sfs.
  python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "AW"
fi