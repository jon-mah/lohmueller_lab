# 20190702

Today we simulated a population with multiple mutation types, found in `../../Scripts/pilot_two_type_sim.slim`. We also wrote a function called `create_sfs_from_vcf` which takes in a Variant Call Format (vcf) file, and returns a dataframe whose columns are the derived allele frequency (DAF), the number of sites, and the mutation type. This script can be found in `../../Scripts/create_sfs_from_vcf.R`.

# Definitions

*  **Derived alleles/variants/mutations**: An allele that arises in a population due to a mutation
*  **Ancestral alleles**: Alleles which are not derived alleles (e.g., already exist in a population).
*  **Unfolded SFS**: Distribution of the frequencies or counts of **derived alleles** in a sample of alleles over all segregating sites. **Notably**, can only be calculated when we can reliably distinguish the derived and ancestral alleles. When calculated, the unfolded SFS is more informative than the folded SFS.
*  **Folded SFS**: Distribution of the frequencies or counts of **minor alleles** in a sample calculated over all segregating sites. **Notably**, can always be calculated.

Minor alleles and derived alleles are not mutually exclusive.
