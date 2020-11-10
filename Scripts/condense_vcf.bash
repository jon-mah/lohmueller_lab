#!/bin/bash
#$ -cwd
#$ -V
#$ -l h_data=1G
#$ -l h_rt=0:10:00
#$ -l h_vmem=50G

# INPUT ARGUMENTS
seed=1
prefix="" # Output prefix, and input prefix of given vcf

# Merge all `.vcf` files.

cp ${prefix}_chrom_1.vcf ${prefix}.vcf

for i in {2..100}
do
  sed -i -r "s/^1\t/${i}\t/g" ${prefix}_chrom_${i}.vcf
  grep ";MT=1\|;MT=2" ${prefix}_chrom_${i}.vcf >> ${prefix}.vcf
done
