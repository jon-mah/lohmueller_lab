# plot_sfs_residual.R
# Author: Jonathan Mah
# Date: 20190731
# This script is used to visually compare the SFS of model and data.

library(ggplot2)
library(reshape2)

setwd("C:/Users/jonat/Desktop/UCLA_BIG_SURP/lohmueller_lab")

input_nonsyn_data = as.numeric(unlist(strsplit(readLines('Eduardo_Scripts/20190715/ns_SFS/AW.sfs')[2], ' ')))
seed_1_nonsyn_data = as.numeric(unlist(strsplit(readLines('Data/AW_array_length_20154/seed_1_easySFS_output_nonsyn/dadi/pop1.sfs')[2], ' ')))
seed_2_nonsyn_data = as.numeric(unlist(strsplit(readLines('Data/AW_array_length_20154_ind_15/seed_1_easySFS_output_nonsyn/dadi/pop1.sfs')[2], ' ')))
seed_10_reduced_nonsyn = as.numeric(unlist(strsplit(readLines('Data/AW_array_2000/seed_10_easySFS_output_nonsyn/dadi/pop1.sfs')[2], ' ')))


input_nonsyn_data = input_nonsyn_data[2:9]
input_nonsyn_data = input_nonsyn_data / sum(input_nonsyn_data)
seed_1_nonsyn_data = seed_1_nonsyn_data[2:9]
seed_1_nonsyn_data = seed_1_nonsyn_data / sum(seed_1_nonsyn_data)
seed_2_nonsyn_data = seed_2_nonsyn_data[2:9]
seed_2_nonsyn_data = seed_2_nonsyn_data / sum(seed_2_nonsyn_data)
seed_10_reduced_nonsyn = seed_10_reduced_nonsyn[2:9]
seed_10_reduced_nonsyn = seed_10_reduced_nonsyn / sum(seed_10_reduced_nonsyn)

input_syn_data = as.numeric(unlist(strsplit(readLines('Eduardo_Scripts/20190715/syn_SFS/AW.sfs')[2], ' ')))
seed_1_syn_data = as.numeric(unlist(strsplit(readLines('Data/AW_array_length_20154/seed_1_easySFS_output_syn/dadi/pop1.sfs')[2], ' ')))
seed_2_syn_data = as.numeric(unlist(strsplit(readLines('Data/AW_array_length_20154_ind_15/seed_1_easySFS_output_syn/dadi/pop1.sfs')[2], ' ')))
seed_10_reduced_syn = as.numeric(unlist(strsplit(readLines('Data/AW_array_2000/seed_10_easySFS_output_syn/dadi/pop1.sfs')[2], ' ')))

input_syn_data = input_syn_data[2:9]
input_syn_data = input_syn_data / sum(input_syn_data)
seed_1_syn_data = seed_1_syn_data[2:9]
seed_1_syn_data = seed_1_syn_data / sum(seed_1_syn_data)
seed_2_syn_data = seed_2_syn_data[2:9]
seed_2_syn_data = seed_2_syn_data / sum(seed_2_syn_data)
seed_10_reduced_syn = seed_10_reduced_syn[2:9]
seed_10_reduced_syn = seed_10_reduced_syn / sum(seed_10_reduced_syn)

x_axis = 1:8

nonsynonymous_df_1 = data.frame(input = input_nonsyn_data,
                                model = seed_1_nonsyn_data,
                                x_axis = x_axis)

synonymous_df_1 = data.frame(input = input_syn_data,
                             model = seed_1_syn_data,
                             x_axis = x_axis)

p_syn_1 <- ggplot(data=synonymous_df_1, aes(x=x_axis, y=input, color='input')) +
  geom_point() +
  geom_line() +
  geom_point(aes(x=x_axis, y=model, color = 'model')) + 
  geom_line(aes(x=x_axis, y=model, color = 'model')) +
  xlab('Number of Sites') +
  ylab('Proportional Site Frequency') +
  ggtitle('Residual for Synonymous Proportional Site Frequency Spectrum, seed=1') +
  scale_color_manual(values=c("blue", "red"), 
                    name="Data Type",
                    breaks=c("input", "model"),
                    labels=c("Real data", "Simulated data")) + 
  theme_bw()
p_syn_1

p_nonsyn_1 <- ggplot(data=nonsynonymous_df_1, aes(x=x_axis, y=input, color='input')) +
  geom_point() +
  geom_line() +
  geom_point(aes(x=x_axis, y=model, color = 'model')) + 
  geom_line(aes(x=x_axis, y=model, color = 'model')) +
  xlab('Number of sites') +
  ylab('Proportional Site Frequency') +
  ggtitle('Residual for Nonsynonymous Proportional Site Frequency Spectrum, seed=1') +
  scale_color_manual(values=c("blue", "red"), 
                     name="Data Type",
                     breaks=c("input", "model"),
                     labels=c("Real data", "Simulated data")) +
  theme_bw()
p_nonsyn_1

x_axis = x_axis

nonsynonymous_df_2 = data.frame(input = input_nonsyn_data,
                                model = seed_2_nonsyn_data,
                                x_axis = x_axis)

synonymous_df_2 = data.frame(input = input_syn_data,
                             model = seed_2_syn_data,
                             x_axis = x_axis)

p_syn_2 <- ggplot(data=synonymous_df_2, aes(x=x_axis, y=input, color='input')) +
  geom_point() +
  geom_line() +
  geom_point(aes(x=x_axis, y=model, color = 'model')) + 
  geom_line(aes(x=x_axis, y=model, color = 'model')) +
  xlab('Number of sites') +
  ylab('Proportional Site Frequency') +
  ggtitle('Residual for Synonymous Proportional Site Frequency Spectrum, seed=2') +
  scale_color_manual(values=c("blue", "red"), 
                     name="Data Type",
                     breaks=c("input", "model"),
                     labels=c("Real data", "Simulated data")) +
  theme_bw()
p_syn_2

p_nonsyn_2 <- ggplot(data=nonsynonymous_df_2, aes(x=x_axis, y=input, color='input')) +
  geom_point() +
  geom_line() +
  geom_point(aes(x=x_axis, y=model, color = 'model')) + 
  geom_line(aes(x=x_axis, y=model, color = 'model')) +
  xlab('Number of sites') +
  ylab('Proportional Site Frequency') +
  ggtitle('Residual for Nonsynonymous Proportional Site Frequency Spectrum, seed=2') +
  scale_color_manual(values=c("blue", "red"), 
                     name="Data Type",
                     breaks=c("input", "model"),
                     labels=c("Real data", "Simulated data")) +
  theme_bw()
p_nonsyn_2

nonsynonymous_df_10 = data.frame(input = input_nonsyn_data,
                                 model = seed_10_reduced_nonsyn,
                                 x_axis = x_axis)

synonymous_df_10 = data.frame(input = input_syn_data,
                              model = seed_10_reduced_syn,
                              x_axis = x_axis)

p_syn_10 <- ggplot(data=synonymous_df_10, aes(x=x_axis, y=input, color='input')) +
  geom_point() +
  geom_line() +
  geom_point(aes(x=x_axis, y=model, color = 'model')) + 
  geom_line(aes(x=x_axis, y=model, color = 'model')) +
  xlab('Number of sites') +
  ylab('Proportional Site Frequency') +
  ggtitle('Residual for Synonymous Proportional Site Frequency Spectrum, seed=10, reduced.') +
  scale_color_manual(values=c("blue", "red"), 
                     name="Data Type",
                     breaks=c("input", "model"),
                     labels=c("Real data", "Simulated data")) +
  theme_bw()
p_syn_10

p_nonsyn_10 <- ggplot(data=nonsynonymous_df_10, aes(x=x_axis, y=input, color='input')) +
  geom_point() +
  geom_line() +
  geom_point(aes(x=x_axis, y=model, color = 'model')) + 
  geom_line(aes(x=x_axis, y=model, color = 'model')) +
  xlab('Number of sites') +
  ylab('Proportional Site Frequency') +
  ggtitle('Residual for Nonsynonymous Proportional Site Frequency Spectrum, seed=10, reduced.') +
  scale_color_manual(values=c("blue", "red"), 
                     name="Data Type",
                     breaks=c("input", "model"),
                     labels=c("Real data", "Simulated data")) +
  theme_bw()
p_nonsyn_10





# Scratch
# seed_vector = 1:100
# shape_vector = c()
# scale_vector = c()
# for (i in 1:100) {
#   file = gsub('FILENUM', i, 'Data/AW_array_2000/seed_FILENUM_fitdadi_output/inferred_DFE.txt')
#   file = readLines(file)
#   params = file[2]
#   params = unlist(strsplit(params, 'array'))[2]
#   shape = unlist(strsplit(params, ' '))[1]
#   shape = substr(shape, start = 3, stop = nchar(shape))
#   scale = unlist(strsplit(params, shape, fixed=TRUE))[2]
#   scale = substr(scale, start = 1, stop = nchar(scale) - 4)
#   shape_vector = c(shape_vector, shape)
#   scale_vector = c(scale_vector, scale)
# }
# 
# Na_2000_data = data.frame(seed=seed_vector, shape=as.numeric(shape_vector), scale=as.numeric(scale_vector))
# write.csv(Na_2000_data, 'Data/AW_2000_parameters.csv', col.names=TRUE, row.names=FALSE)
# 
# mean(as.numeric(shape_vector))
# mean(as.numeric(scale_vector))
