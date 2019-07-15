# qsub -cwd -V -N job_name pipeline.bash

# INPUT ARGUMENTS
num_ind=125 # Number of chromosomes from single population
outdir="../Data/pilot_pipeline/"
outprefix="${outdir}seed_1_one_pop"


# DERIVED ARGUMENTS
inputvcf="${outprefix}.vcf"
syn_inputvcf="${outprefix}_syn.vcf"
nonsyn_inputvcf="${outprefix}_nonsyn.vcf"
grep "#\|;MT=1" ${outprefix}.vcf > $syn_inputvcf
grep "#\|;MT=2" ${outprefix}.vcf > $nonsyn_inputvcf
syn_output_pops_file="${outprefix}_syn_pops_file.txt"
nonsyn_output_pops_file="${outprefix}_nonsyn_pops_file.txt"
syn_easySFS_outdir="${outdir}easySFS_output_syn/"
nonsyn_easySFS_outdir="${outdir}easySFS_output_nonsyn/"
num_samples=$(($num_ind * 2))
easySFS_proj="${num_samples}"

# slim slim_pipeline.slim
python write_pops_file.py $num_ind_1 $num_ind_2 $outprefix
easySFS.py -i $syn_inputvcf -p $syn_output_pops_file -o $syn_easySFS_outdir -f -a --proj $easySFS_proj
easySFS.py -i $nonsyn_inputvcf -p $nonsyn_output_pops_file -o $nonsyn_easySFS_outdir -f -a --proj $easySFS_proj

python fitdadi_infer_DFE.py ${syn_easySFS_outdir}dadi/pop1.sfs ${nonsyn_easySFS_outdir}dadi/pop1.sfs ${outdir}fitdadi_output/

# python fitdadi_infer_DFE.py ../Data/fitdadi_manual_examples/example.sfs ../Data/fitdadi_example_output/ $num_samples
