# Author: Jonathan Mah
# Date: 20190701

# Load necessary packages
# install.packages('vcfR')
library(vcfR)

# Set the working directory
setwd("C:/Users/jonat/Desktop/UCLA_BIG_SURP/lohmueller_lab")

# Define vcf2sfs function

vcf2sfs = function(vcf) {
  vcf = vcf@gt
  vcf = vcf[, 2:101]
  
  for (i in 1:nrow(vcf)) {
    for (j in 1:100) {
      if (vcf[i, j] == '0|0') {
        vcf[i, j] = 0
      } else if(vcf[i, j] == '1|1') {
        vcf[i, j] = 2
      } else if(vcf[i, j] == '1|0') {
        vcf[i, j] = 1
      } else{
        vcf[i, j] = 1
      }
    }
  }
  
  class(vcf) = 'numeric'
  sfs = colSums(vcf)
  sfs = table(sfs)
  barplot(sfs)
}

# Define path to file
path_to_datafile <- './Data/pilot_neutral_sim/'

vcf_0 <- read.vcfR(paste(path_to_datafile, 'output_0.vcf', sep=''))
vcf2sfs(vcf_0)
title(main='SFS_0', xlab='Site Frequency', ylab='Number of sites')

vcf_1 <- read.vcfR(paste(path_to_datafile, 'output_1.vcf', sep=''))
vcf2sfs(vcf_1)
title(main='SFS_1', xlab='Site Frequency', ylab='Number of sites')

vcf_2 <- read.vcfR(paste(path_to_datafile, 'output_2.vcf', sep=''))
vcf2sfs(vcf_2)
title(main='SFS_2', xlab='Site Frequency', ylab='Number of sites')

vcf_3 <- read.vcfR(paste(path_to_datafile, 'output_3.vcf', sep=''))
vcf2sfs(vcf_3)
title(main='SFS_3', xlab='Site Frequency', ylab='Number of sites')

vcf_4 <- read.vcfR(paste(path_to_datafile, 'output_4.vcf', sep=''))
vcf2sfs(vcf_4)
title(main='SFS_4', xlab='Site Frequency', ylab='Number of sites')

vcf_5 <- read.vcfR(paste(path_to_datafile, 'output_5.vcf', sep=''))
vcf2sfs(vcf_5)
title(main='SFS_5', xlab='Site Frequency', ylab='Number of sites')

vcf_6 <- read.vcfR(paste(path_to_datafile, 'output_6.vcf', sep=''))
vcf2sfs(vcf_6)
title(main='SFS_6', xlab='Site Frequency', ylab='Number of sites')

vcf_7 <- read.vcfR(paste(path_to_datafile, 'output_7.vcf', sep=''))
vcf2sfs(vcf_7)
title(main='SFS_7', xlab='Site Frequency', ylab='Number of sites')

vcf_8 <- read.vcfR(paste(path_to_datafile, 'output_8.vcf', sep=''))
vcf2sfs(vcf_8)
title(main='SFS_8', xlab='Site Frequency', ylab='Number of sites')

vcf_9 <- read.vcfR(paste(path_to_datafile, 'output_9.vcf', sep=''))
vcf2sfs(vcf_9)
title(main='SFS_9', xlab='Site Frequency', ylab='Number of sites')
