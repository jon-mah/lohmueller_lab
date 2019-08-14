# plot_nonsyn_sfs.R
# Author: Jonathan Mah
# Date: 20190806
# This script is used to visually compare two SFS's.

library(ggplot2)
library(reshape2)
library(stringr)

# Set your working director.
setwd("C:/Users/jonat/Desktop/UCLA_BIG_SURP/lohmueller_lab")

# Multiple plot function
#
# ggplot objects can be passed in ..., or to plotlist (as a list of ggplot objects)
# - cols:   Number of columns in layout
# - layout: A matrix specifying the layout. If present, 'cols' is ignored.
#
# If the layout is something like matrix(c(1,2,3,3), nrow=2, byrow=TRUE),
# then plot 1 will go in the upper left, 2 will go in the upper right, and
# 3 will go all the way across the bottom.
#
multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  library(grid)
  
  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }
  
  if (numPlots==1) {
    print(plots[[1]])
    
  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))
    
    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))
      
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}

sfs_to_array <- function(path_to_sfs_file) {
  # Argument `path_to_sfs_file` must be a string containing the path to an SFS in `dadi` format.
  given_sfs = as.numeric(unlist(strsplit(readLines(path_to_sfs_file)[2], ' ')))
  
  # It is assumed that the given sfs is folded, and describes 16 individuals.
  given_sfs = given_sfs[2:9]
  
  # Convert to proportional SFS.
  given_sfs = given_sfs / sum(given_sfs)
  
  return (given_sfs)
}

model_sfs_to_array <- function(path_to_sfs_file) {
  # Argument `path_to_sfs_file` must be a string containing the path to an SFS in `dadi` format.
  sfs_string = unlist(strsplit(paste(readLines(path_to_sfs_file)[3:7], collapse=''), split='The expected SFS is: '))[2]
  given_sfs = unlist(strsplit(sfs_string, split=''))
  given_sfs = paste(unlist(given_sfs[5:(length(given_sfs)-5)]), sep='', collapse='')
  given_sfs = as.numeric(unlist(strsplit(given_sfs, split = '[[:space:]]')))
  
  for (index in 1:7) {
    given_sfs[index] = given_sfs[index] + given_sfs[(length(given_sfs) - index + 1)]
  }
  given_sfs = given_sfs[1:8]
  given_sfs = given_sfs / sum(given_sfs)
  return (given_sfs)
}

plot_nonsyn_sfs <- function(empirical_obs_sfs_file, simulated_obs_sfs_file, empirical_model_sfs_file, simulated_model_sfs_file) {
  # Argument `empirical_obs_sfs` must be a string containing the path to an SFS in `dadi` format.
  # Argument `simulated_obs_sfs` must be a string containing the path to an SFS in `dadi` format.
  empirical_obs_sfs = sfs_to_array(empirical_obs_sfs_file)
  simulated_obs_sfs = sfs_to_array(simulated_obs_sfs_file)
  empirical_model_sfs = model_sfs_to_array(empirical_model_sfs_file)
  simulated_model_sfs = model_sfs_to_array(simulated_model_sfs_file)
  
  # It is assumed that the given sfs is folded, and describes 16 individuals.
  x_axis = 1:8
  
  df = data.frame(empirical_obs = empirical_obs_sfs,
                  simulated_obs = simulated_obs_sfs,
                  empirical_model = empirical_model_sfs,
                  simulated_model = simulated_model_sfs,
                  x_axis = x_axis)
  
  p_df <- ggplot(data=df, aes(x=x_axis, y=empirical_obs_sfs, color='empirical_obs')) +
    geom_point() +
    geom_line() +
    geom_point(aes(x=x_axis, y=simulated_obs, color='simulated_obs')) +
    geom_line(aes(x=x_axis, y=simulated_obs, color='simulated_obs')) +
    geom_point(aes(x=x_axis, y=empirical_model, color='empirical_model')) +
    geom_line(aes(x=x_axis, y=empirical_model, color='empirical_model')) +
    geom_point(aes(x=x_axis, y=simulated_model, color='simulated_model')) +
    geom_line(aes(x=x_axis, y=simulated_model, color='simulated_model')) +
    scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
    scale_y_continuous(name='Proportion of SNps', breaks=seq(from=0, to=0.40, by=0.05), limits=c(0, 0.30)) +
    scale_color_manual(values=c('#E69F00', '#56B4E9', '#009E73', '#CC79A7'),
                       name='Data Type',
                       breaks=c('empirical_obs', 'simulated_obs', 'empirical_model', 'simulated_model'),
                       labels=c('Empirical Observation', 'Simulated Observation', 'Empirical Estimation', 'Simulated Estimation')) +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5))
  return(p_df)
}

plot_syn_sfs <- function(empirical_obs_sfs_file, simulated_obs_sfs_file) {
  # Argument `empirical_obs_sfs` must be a string containing the path to an SFS in `dadi` format.
  # Argument `simulated_obs_sfs` must be a string containing the path to an SFS in `dadi` format.
  empirical_obs_sfs = sfs_to_array(empirical_obs_sfs_file)
  simulated_obs_sfs = sfs_to_array(simulated_obs_sfs_file)
  
  # It is assumed that the given sfs is folded, and describes 16 individuals.
  x_axis = 1:8
  
  df = data.frame(empirical_obs = empirical_obs_sfs,
                  simulated_obs = simulated_obs_sfs,
                  x_axis = x_axis)
  
  title = 'Replicate SEED'
  title = sub('SEED', unlist(strsplit(simulated_obs_sfs_file, split=''))[33], title, fixed=TRUE)
  
  p_df <- ggplot(data=df, aes(x=x_axis, y=empirical_obs_sfs, color='empirical_obs')) +
    geom_point() +
    geom_line() +
    geom_point(aes(x=x_axis, y=simulated_obs, color='simulated_obs')) +
    geom_line(aes(x=x_axis, y=simulated_obs, color='simulated_obs')) +
    scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
    scale_y_continuous(name='Proportion of SNps', breaks=seq(from=0, to=0.40, by=0.05), limits=c(0, 0.30)) +
    scale_color_manual(values=c('#0072B2', '#D55E00'),
                       name='Data Type',
                       breaks=c('empirical_obs', 'simulated_obs'),
                       labels=c('Empirical Observation', 'Simulated Observation')) +
    ggtitle(title) +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5))
  return(p_df)
}

# labels=c('Empirical Observation', 'Simulated Observation', 'Empirical Expectation', 'Simulated Expectation')) +


# Set your working directory.
setwd("C:/Users/jonat/Desktop/UCLA_BIG_SURP/lohmueller_lab")

input_obs_nonsyn = 'Eduardo_Scripts/20190715/ns_SFS/AW.sfs'
input_model_nonsyn = 'Eduardo_Output/AW/inferred_DFE.txt'
input_obs_syn = 'Eduardo_Scripts/20190715/syn_SFS/AW.sfs'

seed_1_obs_ns = 'Data/AW_array_length_20154/seed_1_easySFS_output_nonsyn/dadi/pop1.sfs'
seed_1_model_ns = 'Data/AW_array_length_20154/seed_1_fitdadi_output/inferred_DFE.txt'
seed_1_plot_ns <- plot_nonsyn_sfs(input_obs_nonsyn, seed_1_obs_ns, input_model_nonsyn, seed_1_model_ns)

seed_2_obs_ns = 'Data/AW_array_length_20154/seed_2_easySFS_output_nonsyn/dadi/pop1.sfs'
seed_2_model_ns = 'Data/AW_array_length_20154/seed_2_fitdadi_output/inferred_DFE.txt'
seed_2_plot_ns <- plot_nonsyn_sfs(input_obs_nonsyn, seed_2_obs_ns, input_model_nonsyn, seed_2_model_ns)

seed_3_obs_ns = 'Data/AW_array_length_20154/seed_3_easySFS_output_nonsyn/dadi/pop1.sfs'
seed_3_model_ns = 'Data/AW_array_length_20154/seed_3_fitdadi_output/inferred_DFE.txt'
seed_3_plot_ns <- plot_nonsyn_sfs(input_obs_nonsyn, seed_3_obs_ns, input_model_nonsyn, seed_3_model_ns)

seed_4_obs_ns = 'Data/AW_array_length_20154/seed_4_easySFS_output_nonsyn/dadi/pop1.sfs'
seed_4_model_ns = 'Data/AW_array_length_20154/seed_4_fitdadi_output/inferred_DFE.txt'
seed_4_plot_ns <- plot_nonsyn_sfs(input_obs_nonsyn, seed_4_obs_ns, input_model_nonsyn, seed_4_model_ns)

seed_5_obs_ns = 'Data/AW_array_length_20154/seed_5_easySFS_output_nonsyn/dadi/pop1.sfs'
seed_5_model_ns = 'Data/AW_array_length_20154/seed_5_fitdadi_output/inferred_DFE.txt'
seed_5_plot_ns <- plot_nonsyn_sfs(input_obs_nonsyn, seed_5_obs_ns, input_model_nonsyn, seed_5_model_ns)

# multiplot(seed_1_plot_ns, seed_3_plot_ns, seed_5_plot_ns, seed_2_plot_ns, seed_4_plot_ns, cols=2)

# SYNONYMOUS

seed_1_obs_syn = 'Data/AW_array_length_20154/seed_1_easySFS_output_syn/dadi/pop1.sfs'
seed_1_plot_syn <- plot_syn_sfs(input_obs_syn, seed_1_obs_syn)

seed_2_obs_syn = 'Data/AW_array_length_20154/seed_2_easySFS_output_syn/dadi/pop1.sfs'
seed_2_plot_syn <- plot_syn_sfs(input_obs_syn, seed_2_obs_syn)

seed_3_obs_syn = 'Data/AW_array_length_20154/seed_3_easySFS_output_syn/dadi/pop1.sfs'
seed_3_plot_syn <- plot_syn_sfs(input_obs_syn, seed_3_obs_syn)

seed_4_obs_syn = 'Data/AW_array_length_20154/seed_4_easySFS_output_syn/dadi/pop1.sfs'
seed_4_plot_syn <- plot_syn_sfs(input_obs_syn, seed_4_obs_syn)

seed_5_obs_syn = 'Data/AW_array_length_20154/seed_5_easySFS_output_syn/dadi/pop1.sfs'
seed_5_plot_syn <- plot_syn_sfs(input_obs_syn, seed_5_obs_syn)

# Pug_ns

PG_seed_1_obs_ns = 'Data/PG/seed_1_easySFS_output_nonsyn/dadi/pop1.sfs'
PG_seed_1_model_ns = 'Data/PG/seed_1_fitdadi_output/inferred_DFE.txt'
PG_seed_1_plot_ns <- plot_nonsyn_sfs(input_obs_nonsyn, PG_seed_1_obs_ns, input_model_nonsyn, PG_seed_1_model_ns)

PG_seed_2_obs_ns = 'Data/PG/seed_2_easySFS_output_nonsyn/dadi/pop1.sfs'
PG_seed_2_model_ns = 'Data/PG/seed_2_fitdadi_output/inferred_DFE.txt'
PG_seed_2_plot_ns <- plot_nonsyn_sfs(input_obs_nonsyn, PG_seed_2_obs_ns, input_model_nonsyn, PG_seed_2_model_ns)

PG_seed_3_obs_ns = 'Data/PG/seed_3_easySFS_output_nonsyn/dadi/pop1.sfs'
PG_seed_3_model_ns = 'Data/PG/seed_3_fitdadi_output/inferred_DFE.txt'
PG_seed_3_plot_ns <- plot_nonsyn_sfs(input_obs_nonsyn, PG_seed_3_obs_ns, input_model_nonsyn, PG_seed_3_model_ns)

# Pug_syn

PG_seed_1_obs_syn = 'Data/PG/seed_1_easySFS_output_syn/dadi/pop1.sfs'
PG_seed_1_plot_syn = plot_syn_sfs(input_obs_syn, PG_seed_1_obs_syn)

PG_seed_2_obs_syn = 'Data/PG/seed_2_easySFS_output_syn/dadi/pop1.sfs'
PG_seed_2_plot_syn = plot_syn_sfs(input_obs_syn, PG_seed_2_obs_syn)

PG_seed_3_obs_syn = 'Data/PG/seed_3_easySFS_output_syn/dadi/pop1.sfs'
PG_seed_3_plot_syn = plot_syn_sfs(input_obs_syn, PG_seed_3_obs_syn)

# AW_nonsyn
seed_1_plot_ns + ggtitle('Arctic Wolf Nonsynonymous Replicate 1')
seed_2_plot_ns + ggtitle('Arctic Wolf Nonsynonymous Replicate 2')
seed_3_plot_ns + ggtitle('Arctic Wolf Nonsynonymous Replicate 3')
seed_4_plot_ns + ggtitle('Arctic Wolf Nonsynonymous Replicate 4')
seed_5_plot_ns + ggtitle('Arctic Wolf Nonsynonymous Replicate 5')

# AW_syn
seed_1_plot_syn + ggtitle('Arctic Wolf Synonymous Replicate 1')
seed_2_plot_syn + ggtitle('Arctic Wolf Synonymous Replicate 2')
seed_3_plot_syn + ggtitle('Arctic Wolf Synonymous Replicate 3')
seed_4_plot_syn + ggtitle('Arctic Wolf Synonymous Replicate 4')
seed_5_plot_syn + ggtitle('Arctic Wolf Synonymous Replicate 5')

# PG_nonsyn
PG_seed_1_plot_ns + ggtitle('Pug Nonsynonymous Replicate 1')
PG_seed_2_plot_ns + ggtitle('Pug Nonsynonymous Replicate 2')
PG_seed_3_plot_ns + ggtitle('Pug Nonsynonymous Replicate 3')

# PG_syn
PG_seed_1_plot_syn + ggtitle('Pug Synonymous Replicate 1')
PG_seed_2_plot_syn + ggtitle('Pug Synonymous Replicate 2')
PG_seed_3_plot_syn + ggtitle('Pug Synonymous Replicate 3')
