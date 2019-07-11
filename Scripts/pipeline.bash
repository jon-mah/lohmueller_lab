# qsub -cwd -V -N job_name pipeline.bash
num_ind_1=3
num_ind_2=2
outprefix='../Data/pilot_pipeline/seed_1_two_pop'

slim sim_multi_pop_one_vcf.slim
python write_pops_file.py $num_ind_1 $num_ind_2 $outprefix
easySFS.py -i ../Data/pilot_pipeline/seed_1_two_pop.vcf -p ../Data/pilot_pipeline/seed_1_two_pop_pops_file.txt -o ../Data/pilot_pipeline/easySFS/ -f

