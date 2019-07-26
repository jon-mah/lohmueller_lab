# DFE_visual_comparison.R
# Author: Jonathan Mah
# Date: 20190725
# This script is used to visually compare different DFE's.

library(ggplot2)
library(reshape2)

set.seed(1)

given_shape = 0.0980
given_scale = 4.9260

given_dist = rgamma(1000000, shape=given_shape, scale=given_scale)

seed_1_shape = 0.07823031
seed_1_scale = 4.89753492

seed_1_dist = rgamma(1000000, shape=seed_1_shape, scale=seed_1_scale)

seed_2_shape = 0.07286296
seed_2_scale = 4.97917218

seed_2_dist = rgamma(1000000, shape=seed_2_shape, scale=seed_2_scale)

seed_3_shape = 0.11293385
seed_3_scale = 4.76848343

seed_3_dist = rgamma(1000000, shape=seed_3_shape, scale=seed_3_scale)

seed_5_shape = 0.13145862
seed_5_scale = 4.92067621

seed_5_dist = rgamma(1000000, shape=seed_5_shape, scale=seed_5_scale)

seed_50_shape = 0.10862258
seed_50_scale = 4.91345036

seed_50_dist = rgamma(1000000, shape=seed_50_shape, scale=seed_50_scale)

AW_poscon_shifted_shape = 0.0980
AW_poscon_shifted_scale = 492.60
AW_poscon_inferred_shape = 0.21763684
AW_poscon_inferred_scale = 0.23417476

AW_poscon_shifted_dist = rgamma(1000000, shape=AW_poscon_shifted_shape, scale=AW_poscon_shifted_scale)
AW_poscon_inferred_dist = rgamma(1000000, shape=AW_poscon_inferred_shape, scale=AW_poscon_inferred_scale)

AW_LB_shifted_shape = 0.1001
AW_LB_shifted_scale = 4.9873
AW_LB_inferred_shape = 0.99682586
AW_LB_inferred_scale = 0.04518004

AW_LB_shifted_dist = rgamma(1000000, shape=AW_LB_shifted_shape, scale=AW_LB_shifted_scale)
AW_LB_inferred_dist = rgamma(1000000, shape=AW_LB_inferred_shape, scale=AW_LB_inferred_scale)

AW_PG_shifted_shape = 0.0931
AW_PG_shifted_scale = 4.5879
AW_PG_inferred_shape_1760 = 0.9573767
AW_PG_inferred_scale_1760 = 0.03943018

AW_PG_shifted_dist = rgamma(1000000, shape=AW_PG_shifted_shape, scale=AW_PG_shifted_scale)
AW_PG_inferred_dist_1760 = rgamma(1000000, shape=AW_PG_inferred_shape_1760, scale=AW_PG_inferred_scale_1760)

AW_PG_inferred_shape_100 = 0.11647548
AW_PG_inferred_scale_100 = 4.87223218

AW_PG_inferred_dist_100 = rgamma(1000000, shape=AW_PG_inferred_shape_100, scale=AW_PG_inferred_scale_100)

AW_PG_inferred_shape_1000 = 0.13395607
AW_PG_inferred_scale_1000 = 4.98398772

AW_PG_inferred_dist_1000 = rgamma(1000000, shape=AW_PG_inferred_shape_1000, scale=AW_PG_inferred_scale_1000)

AW_PG_inferred_shape_2000 = 0.16675636
AW_PG_inferred_scale_2000 = 4.960004

AW_PG_inferred_dist_2000 = rgamma(1000000, shape=AW_PG_inferred_shape_2000, scale=AW_PG_inferred_scale_2000)

seed_1_df <- data.frame(given = given_dist,
                        inferred = seed_1_dist)

ggplot(melt(seed_1_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 1')

seed_1_df <- data.frame(given = given_dist,
                        inferred = seed_1_dist)

ggplot(melt(seed_1_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 1')

seed_2_df <- data.frame(given = given_dist,
                        inferred = seed_2_dist)

ggplot(melt(seed_2_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 2')

seed_3_df <- data.frame(given = given_dist,
                        inferred = seed_3_dist)

ggplot(melt(seed_3_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 3')

seed_5_df <- data.frame(given = given_dist,
                        inferred = seed_5_dist)

ggplot(melt(seed_5_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 5')

seed_50_df <- data.frame(given = given_dist,
                        inferred = seed_50_dist)

ggplot(melt(seed_50_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 50')

AW_poscon_df <- data.frame(given = given_dist,
                           shifted = AW_poscon_shifted_dist,
                           inferred = AW_poscon_inferred_dist)

ggplot(melt(AW_poscon_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Positive control')

AW_LB_df <- data.frame(given = given_dist,
                       shifted = AW_LB_shifted_dist,
                       inferred = AW_LB_inferred_dist)

ggplot(melt(AW_LB_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('AW --> LB, 1760 gens')

AW_PG_1760_df <- data.frame(given = given_dist,
                            shifted = AW_PG_shifted_dist,
                            inferred = AW_PG_inferred_dist_1760)

ggplot(melt(AW_PG_1760_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('AW --> PG, 1760 gens')

AW_PG_100_df <- data.frame(given = given_dist,
                            shifted = AW_PG_shifted_dist,
                            inferred = AW_PG_inferred_dist_100)

ggplot(melt(AW_PG_100_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('AW --> PG, 100 gens')

AW_PG_1000_df <- data.frame(given = given_dist,
                            shifted = AW_PG_shifted_dist,
                            inferred = AW_PG_inferred_dist_1000)

ggplot(melt(AW_PG_1000_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('AW --> PG, 1000 gens')

AW_PG_2000_df <- data.frame(given = given_dist,
                            shifted = AW_PG_shifted_dist,
                            inferred = AW_PG_inferred_dist_2000)

ggplot(melt(AW_PG_2000_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('AW --> PG, 2000 gens')