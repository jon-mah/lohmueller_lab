# Author: Jonathan Mah
# Date: 20190703

# Load necessary packages
library(vcfR)


# This method accepts two strings, each containing the path to a given Variant Call Format
# (vcf) file, as well as a vector containing integer(s) representing at least one mutation
# type.
# This method returns a dataframe whose columns are the derived allele frequency, the
# of number of sites demonstrating the allele frequency, and the mutation type.
create_2d_sfs =function(vcf_in_path_1, vcf_in_path_2, mutation_type_vector) {
  # Construct empty data frame to append to later.
  sfs_df = data.frame(derived_allele_frequency=numeric(),
                       num_sites=numeric(), 
                       mutation_type=numeric())
  if (length(mutation_type_vector) <= 0) {
    stop('At least one mutation type must be included in the given vector.')
  }
  # For each mutation type, compute derived allele frequency and number of sites.
  for (mt in mutation_type_vector) {
    # Read given vcf files into separate data frames.
    vcf_1 = read.vcfR(vcf_in_path_1)
    vcf_2 = read.vcfR(vcf_in_path_2)

    vcf_info_1 = vcf_1@fix[, c('CHROM', 'POS', 'INFO')]
    vcf_info_2 = vcf_2@fix[, c('CHROM', 'POS', 'INFO')]
    # Track which rows of vcf are associated with given mutation type.
    mt_logical_1 = logical(nrow(vcf_info_1))
    mt_logical_2 = logical(nrow(vcf_info_2))
    for (i in 1:nrow(vcf_info_1)) {
      mt_logical_1[i] = grepl(paste(';MT=', as.character(mt), sep=''), vcf_info_1[i, 'INFO'], fixed=TRUE)
    }
    for (i in 1:nrow(vcf_info_2)) {
      mt_logical_2[i] = grepl(paste(';MT=', as.character(mt), sep=''), vcf_info_2[i, 'INFO'], fixed=TRUE)
    }
    # Convert to genotypes
    vcf_1 = vcf_1@gt
    vcf_2 = vcf_2@gt
    # Keep rows of vcf which are associated with given mutation type.
    vcf_1 = vcf_1[mt_logical_1, 2:ncol(vcf_1)]
    vcf_2 = vcf_2[mt_logical_2, 2:ncol(vcf_2)]
    vcf_info_1 = vcf_info_1[mt_logical_1, ]
    vcf_info_2 = vcf_info_2[mt_logical_2, ]
    
    # Function which takes in the info column and returns the chromosome and position.
    vcf_SNP_id_1 = condense_info_column(vcf_info_1)
    vcf_SNP_id_2 = condense_info_column(vcf_info_2)

    # Function which takes in a vcf@gt and returns the quantified 
    vcf_1 = quantify_genotype(vcf_1)
    vcf_1 = cbind(vcf_SNP_id_1, vcf_1)
    vcf_2 = quantify_genotype(vcf_2)
    vcf_2 = cbind(vcf_SNP_id_2, vcf_2)

    vcf_SNP_set = union(vcf_1[, 1], vcf_2[, 1])

    vcf_1_daf = numeric(length(vcf_SNP_set))
    vcf_2_daf = numeric(length(vcf_SNP_set))
    for (i in 1:length(vcf_SNP_set)) {
      if (any(vcf_1[, 1] == vcf_SNP_set[i])) {
        for (j in 1:nrow(vcf_1)) {
          if (vcf_SNP_set[i] == vcf_1[j, 1]) {
            vcf_1_daf[i] = vcf_1[j, 2]
          }
        }
      } else {
        vcf_1_daf[i] = 0
      }
      if (any(vcf_2[, 1] == vcf_SNP_set[i])) {
        for (k in 1:nrow(vcf_2)) {
          if (vcf_SNP_set[i] == vcf_2[k, 1]) {
            vcf_2_daf[i] = vcf_2[k, 2]
          }
        }
      } else {
        vcf_2_daf[i] = 0
      }
    }
    vcf_2d_daf = numeric(length(vcf_SNP_set))
    for (i in 1:length(vcf_SNP_set)) {
      vcf_2d_daf[i] = paste(as.character(vcf_1_daf[i]), as.character(vcf_2_daf[i]), sep=', ')
    }
    sfs_table = as.data.frame(table(vcf_2d_daf))
    derived_allele_frequency = as.character(sfs_table[, 1])
    num_sites = sfs_table[, 'Freq']
    # //TODO: implement tests
    # Assert derived allele frequency does not exceed legal values.
    # if (max(derived_allele_frequency, n=1) >= 2 * ncol(vcf)) {
    #   stop('The maximum derived allele frequency cannot exceed twice the number of individuals.')
    # }
    # Assert derived allele frequency is at minimum a legal value.
    # if (max(derived_allele_frequency) <= 0) {
    #   stop('The minimum derived allele frequency must be at least 1.')
    # }
    # Vector of equivalent length containing the mutation type
    mutation_type = rep(mt, times=length(derived_allele_frequency))
    # Construct temporary data frame for this mutation type.
    temp_df = data.frame(derived_allele_frequency,
                          num_sites, 
                          mutation_type)
    sfs_df = rbind(sfs_df, temp_df)  # Append temporary dataframe to sfs_df
  }
  return(sfs_df)
}


quantify_genotype = function(vcf) {
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
  return(rowSums(vcf))
}

condense_info_column = function(vcf_info) {
  vcf_SNP_id = character(nrow(vcf_info))
  for (i in 1:nrow(vcf_info)) {
    vcf_SNP_id[i] = paste(as.character(vcf_info[i, 'CHROM']), as.character(vcf_info[i, 'POS']), sep='_')
  }
  return(vcf_SNP_id)
}

setwd("C:/Users/jonat/Desktop/UCLA_BIG_SURP/lohmueller_lab")
sfs_1 = create_2d_sfs('Data/sim_two_populations/seed_1_pop_1_divergence.vcf', 'Data/sim_two_populations/seed_1_pop_2_divergence.vcf', c(1))
