# qsub -cwd -V -N job_name pipeline.bash
num_ind_1=3
num_ind_2=2
outdir='../Data/pilot_pipeline/'
outprefix='${outdir}seed_1_two_pop'
outputvcf='${outprefix}.vcf'
output_pops_file='${outprefix}_pops_file.txt'
easySFS_outdir='${outdir}/easySFS/'
easySFS_proj = '${num_ind_1},${num_ind_2}

slim sim_multi_pop_one_vcf.slim
python write_pops_file.py $num_ind_1 $num_ind_2 $outprefix
easySFS.py -i $outputvcf -p $output_pops_file -o $easySFS_outdir -f -a --proj $easySFS_proj

