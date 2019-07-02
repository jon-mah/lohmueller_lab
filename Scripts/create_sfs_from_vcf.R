# Author: Jonathan Mah
# Date: 20190702

# Load necessary packages
# install.packages('vcfR')
library(vcfR)

create_sfs_from_vcf <- function(vcf_in_path, mutation_type_vector) {
  sfs_df <- data.frame(derived_allele_frequency=numeric(),
                       num_sites=numeric(), 
                       mutation_type=numeric())
  for (mt in mutation_type_vector) {
    vcf <- read.vcfR(vcf_in_path)
    vcf_info <- vcf@fix[, 'INFO']
    mt_logical = logical(length(vcf_info))
    for (i in 1:length(vcf_info)) {
      mt_logical[i] = grepl(paste(';MT=', as.character(mt), sep=''), vcf_info[i], fixed=TRUE)
    }
    vcf <- vcf@gt
    vcf <- vcf[mt_logical, 2:ncol(vcf)]
    
    for (i in 1:nrow(vcf)) {
      for (j in 1:ncol(vcf)) {
        if (vcf[i, j] != '0|0' & vcf[i, j] != '1|0' & 
                 vcf[i, j] != '0|1' & vcf[i, j] != '1|1') {
          stop("All elements of the given vcf file must be integers.")
        }
        if (vcf[i, j] == '0|0') {
          vcf[i, j] = 0
        } else if(vcf[i, j] == '1|1') {
          vcf[i, j] = 2
        } else {
          vcf[i, j] = 1
        }
      }
    }
    class(vcf) = 'numeric'
    sfs_table <- as.data.frame(table(rowSums(vcf)))
    derived_allele_frequency = as.numeric(sfs_table[, 'Var1'])
    if (max(derived_allele_frequency, n=1) >= 2 * ncol(vcf)) {
      stop('The maximum derived allele frequency cannot exceed twice the number of individuals.')
    }
    if (max(derived_allele_frequency) <= 0) {
      stop('The minimum derived allele frequency must be at least 1.')
    }
    num_sites = sfs_table[, 'Freq']
    mutation_type = rep(mt, times=length(derived_allele_frequency))
    temp_df <- data.frame(derived_allele_frequency,
                         num_sites, 
                         mutation_type)
    sfs_df <- rbind(sfs_df, temp_df)
  }
  return(sfs_df)
}

sfs_df_1 = create_sfs_from_vcf('Data/pilot_neutral_sim/output_0.vcf', 1)
sfs_df_1

sfs_df_2 = create_sfs_from_vcf('Data/pilot_two_type_sim/output_0.vcf', c(1, 2))
sfs_df_2
