#!/bin/bash
#$ -cwd
#$ -V
#$ -m bea
#$ -l h_data=10G
#$ -l h_rt=02:00:00

# INPUT ARGUMENTS
num_ind=8 # Number of samples from single population.
prefix="../Data/pop_4000_working_neutral_shift/0_gen" # Output prefix, and input prefix of given vcf
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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"

# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/10_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/20_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/30_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/40_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/50_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/60_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/70_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/80_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/90_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/100_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/110_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/120_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/130_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/140_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/150_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/200_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/250_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/300_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/350_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"


# INPUT ARGUMENTS
prefix="../Data/pop_4000_working_neutral_shift/400_gen" # Output prefix, and input prefix of given vcf

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${prefix}_easySFS_output_syn/"
nonsyn_easySFS_outdir="${prefix}_easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

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
# python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${prefix}_fitdadi_output/ --breed "LB"
