# Author: Jonathan Mah
# Date: 20190702

# Load necessary packages
# install.packages('vcfR')
library(vcfR)

# This method accepts a string containing the path to a given Variant Call Format (vcf) file
# and a vector containing at least one mutation type.
# This method returns a dataframe whose columns are the derived allele frequency, the
# of number of sites demonstrating the allele frequency, and the mutation type.
create_sfs_from_vcf <- function(vcf_in_path, mutation_type_vector) {
  # Construct empty data frame to append to later.
  sfs_df <- data.frame(derived_allele_frequency=numeric(),
                       num_sites=numeric(), 
                       mutation_type=numeric())
  if (length(mutation_type_vector) <= 0) {
    stop('At least one mutation type must be included in the given vector.')
  }
  # For each mutation type, compute derived allele frequency and number of sites.
  for (mt in mutation_type_vector) {
    vcf <- read.vcfR(vcf_in_path)  # Read given vcf file into a data frame.
    vcf_info <- vcf@fix[, 'INFO']
    # Track which rows of vcf are associated with given mutation type.
    mt_logical = logical(length(vcf_info))
    for (i in 1:length(vcf_info)) {
      mt_logical[i] = grepl(paste(';MT=', as.character(mt), sep=''), vcf_info[i], fixed=TRUE)
    }
    vcf <- vcf@gt  # Genotypes of vcf.
    # Keep rows of vcf which are associated with given mutation type.
    vcf <- vcf[mt_logical, 2:ncol(vcf)]
    
    # Convert all elements of vcf dataframe into numerical genotype
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
    sfs_table <- as.data.frame(table(rowSums(vcf)))  # Count unique allele frequencies
    derived_allele_frequency = as.numeric(as.character(sfs_table[, 'Var1']))
    # Assert derived allele frequency does not exceed legal values.
    if (max(derived_allele_frequency, n=1) >= 2 * ncol(vcf)) {
      stop('The maximum derived allele frequency cannot exceed twice the number of individuals.')
    }
    # Assert derived allele frequency is at minimum a legal value.
    if (max(derived_allele_frequency) <= 0) {
      stop('The minimum derived allele frequency must be at least 1.')
    }
    num_sites = sfs_table[, 'Freq']
    # Vector of equivalent length containing the mutation type
    mutation_type = rep(mt, times=length(derived_allele_frequency))
    # Construct temporary data frame for this mutation type.
    temp_df <- data.frame(derived_allele_frequency,
                         num_sites, 
                         mutation_type)
    sfs_df <- rbind(sfs_df, temp_df)  # Append temporary dataframe to sfs_df
  }
  return(sfs_df)
}

setwd("C:/Users/jonat/Desktop/UCLA_BIG_SURP/lohmueller_lab")

sfs_df_1 = create_sfs_from_vcf('Data/pilot_neutral_sim/output_9.vcf', 1)
sfs_df_1

sfs_df_2 = create_sfs_from_vcf('Data/pilot_two_type_sim/output_0.vcf', c(1, 2))
sfs_df_2

sfs_df_3 = create_sfs_from_vcf('Data/pilot_two_type_sim/output_0.vcf', 1)
sfs_df_3

sfs_df_4 = create_sfs_from_vcf('Data/pilot_two_type_sim/output_0.vcf', 2)
sfs_df_4
