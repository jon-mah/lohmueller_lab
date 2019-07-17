# qsub -cwd -V -N job_name pipeline.bash

# INPUT ARGUMENTS
num_ind=15 # Number of samples from single population.
num_ind_2=0 # Number of samples from a second single population.
outdir="../Data/pipeline_output/" # Output directory, which contains given vcf
prefix="../Data/pipeline_output/seed_1_one_pop" # Output prefix, and input prefix of given vcf
easySFS_proj=30 # Number of chromosomes that sample is projected down into.

# DERIVED ARGUMENTS
inputvcf="${prefix}.vcf"
syn_inputvcf="${prefix}_syn.vcf"
nonsyn_inputvcf="${prefix}_nonsyn.vcf"
syn_output_pops_file="${prefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${prefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${outdir}easySFS_output_syn/"
nonsyn_easySFS_outdir="${outdir}easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))

# slim slim_pipeline.slim # Run slim file to generate `.vcf`.

# Separate input `.vcf` file into synonymous and nonsynonymous.
grep "#\|;MT=1" ${prefix}.vcf > $syn_inputvcf
grep "#\|;MT=2" ${prefix}.vcf > $nonsyn_inputvcf

# Write pops_file.txt for easySFS.py.
python write_pops_file.py $num_ind 0 ${outprefix}_syn
python write_pops_file.py $num_ind 0 ${outprefix}_nonsyn

# Use easySFS.py to compute synonymous and nonsynonymous sfs.
python easySFS.py -i $syn_inputvcf -p $syn_output_pops_file -o $syn_easySFS_outdir -f -a --proj $easySFS_proj
python easySFS.py -i $nonsyn_inputvcf -p $nonsyn_output_pops_file -o $nonsyn_easySFS_outdir -f -a --proj $easySFS_proj

# Use fitdadi_infer_DFE.py to infer DFE for given synonymous and
# nonsynonymous sfs.
python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${outdir}fitdadi_output/ --breed "AW"

