# qsub -cwd -V -N job_name pipeline.bash

# INPUT ARGUMENTS
num_ind_1=3
num_ind_2=2
outdir="../Data/pilot_pipeline/"
outprefix="${outdir}seed_1_one_pop"

# DERIVED ARGUMENTS
inputvcf="${outprefix}.vcf"
output_pops_file="${outprefix}_pops_file.txt"
easySFS_outdir="${outdir}/easySFS_output/"
easySFS_proj="${num_ind_1},${num_ind_2}"

slim slim_pipeline.slim
python write_pops_file.py $num_ind_1 $num_ind_2 $outprefix
easySFS.py -i $inputvcf -p $output_pops_file -o $easySFS_outdir -f -a --proj $easySFS_proj
# python fitdadi_infer_DFE.py ../Data/pilot_pipeline/easySFS_output/dadi/pop1-3.sfs ../Data/pilot_pipeline/fitdadi_output/
