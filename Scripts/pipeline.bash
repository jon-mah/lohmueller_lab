# qsub -cwd -V -N job_name pipeline.bash

# INPUT ARGUMENTS
num_ind_1=125 # Number of chromosomes from population 1
num_ind_2=0 # Number of chromosomes from population 2
outdir="../Data/pilot_pipeline/"
outprefix="${outdir}seed_1_one_pop"

# DERIVED ARGUMENTS
inputvcf="${outprefix}.vcf"
output_pops_file="${outprefix}_pops_file.txt"
easySFS_outdir="${outdir}easySFS_output/"
num_samples_1=$(($num_ind_1 * 2))
num_samples_2=$(($num_ind_2 * 2))
if [ "$num_ind_2" -ge "0" ]
then
  easySFS_proj="${num_samples_1}"
  num_samples=$num_samples_1
else
  easySFS_proj="${num_samples_1},${num_samples_2}"
  num_samples=$(($num_samples_1 + $num_samples_2))
fi

# slim slim_pipeline.slim
python write_pops_file.py $num_ind_1 $num_ind_2 $outprefix
easySFS.py -i $inputvcf -p $output_pops_file -o $easySFS_outdir -f -a --proj $easySFS_proj
python fitdadi_infer_DFE.py ${easySFS_outdir}dadi/pop1.sfs ${outdir}fitdadi_output/

# python fitdadi_infer_DFE.py ../Data/fitdadi_manual_examples/example.sfs ../Data/fitdadi_example_output/ $num_samples
