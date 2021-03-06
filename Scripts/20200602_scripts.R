library(ggplot2)
library(MASS)
library(reshape2)

empirical_nonsyn_sfs_1 = c(2853, 1548, 1058, 947, 779, 717, 682, 336)
empirical_nonsyn_sfs_2 = c(2750, 1515, 1070, 887, 774, 802, 715, 352)
empirical_nonsyn_sfs_3 = c(2902, 1479, 1060, 877, 761, 753, 693, 331)
empirical_nonsyn_sfs_4 = c(2852, 1494, 1070, 812, 806, 761, 727, 359)
empirical_nonsyn_sfs_5 = c(2878, 1454, 1077, 944, 763, 769, 721, 364)
seed_1_gamma_sfs = fold_sfs(c(2696.3204048524726, 1365.5421300773407, 924.6595989804563, 
                              700.1330814690039, 560.9128160303762, 464.49385104195505, 393.0204949501423, 
                              337.6430362616147, 293.42659236305667, 257.3632117185079, 227.48806002623266, 
                              202.44559230655153, 181.25909621156902, 163.2000224637726, 147.7096969807512))
seed_2_gamma_sfs = fold_sfs(c(2518.1891476142155, 1208.2617185920851, 804.8328534545399,
                              616.4505474816863, 509.58015218946355, 441.4646583129374, 394.50917913916226,
                              360.2513894087652, 334.1572521040493, 313.59580671555045, 296.94351683332343,
                              283.14821174651104, 271.50019663554303, 261.5045889378991,
                              252.80645667711943))
seed_3_gamma_sfs = fold_sfs(c(2646.117439535373, 1250.504778197519, 818.8482398856476,
                              617.0562832386315, 502.63337523970864, 429.7808255748014, 379.61238135007784,
                              343.0381545739221, 315.1892788790151, 293.2432105484505, 275.4605872387824,
                              260.7159986142235, 248.2516680474747, 237.54012102588524, 228.20371201431294))
seed_4_gamma_sfs = fold_sfs(c(2626.2888105908974, 1244.6672631368438, 827.0778253459898,
                              631.943589001803, 519.5393302717762, 446.04981642088893, 393.72757431366824,
                              354.1331234178917, 322.77930963681644, 297.0746093538919, 275.4233174608968,
                              256.79126820596315, 240.47947680237763, 225.99859986139606,
                              212.99565131284604))
seed_5_gamma_sfs = fold_sfs(c(2616.756021736458, 1346.0879471201642, 923.2146091720508,
                              706.2240377954164, 570.5281240612607, 475.77080127164965, 404.9965314328197,
                              349.7888744049611, 305.4419263738432, 269.0770016587759, 238.80573624543334,
                              213.31928459214882, 191.66999397798776, 173.14750784678074,
                              157.20444592472944))

seed_1_neugamma_sfs = fold_sfs(c(2683.762723754515, 1347.3295170110687, 908.1037686911084,
                                 687.377625680452, 552.4169158607266, 460.0862776527286, 392.30251350376324,
                                 340.15396378185267, 298.71304683384835, 265.00697114616895,
                                 237.11553351906795, 213.7290327094712, 193.914182747692, 176.98198293972052,
                                 162.40899918236488))
seed_2_neugamma_sfs = fold_sfs(c(2523.07781141336, 1205.6623719306667, 800.1119607088589,
                                 611.7165548486807, 505.63731672359665, 438.586827430075, 392.75096577411847,
                                 359.5781878899342, 334.50116906510186, 314.8800001065339, 299.09260528308124,
                                 286.0924072336155, 275.1765926157537, 265.8571834374168, 257.78564852672156))
seed_3_neugamma_sfs = fold_sfs(c(2367.7089876455825, 1103.3697101212872, 742.0888417217507,
                                 582.3379306422287, 494.9872777382524, 440.61453616219006, 403.66204507458576,
                                 376.90357883438617, 356.57553744239215, 340.5432237509978,
                                 327.51316759981626, 316.6592561780264, 307.43073750630714, 299.4471248912786,
                                 292.43755010256166))
seed_4_neugamma_sfs = fold_sfs(c(2628.680658623202, 1240.392220483691, 821.465129112981, 626.893829910841,
                                 515.6284948807005, 443.38889659432436, 392.26753594392017, 353.7752014645162,
                                 323.415468090777, 298.6019644809734, 277.7485993086381, 259.8314770379711,
                                 244.16116479880796, 230.25674782398588, 217.77251924387969))
seed_5_neugamma_sfs = fold_sfs(c(2436.6840134782306, 1243.4316816853477, 867.9878148438274,
                                 681.6929714066466, 566.8630867242709, 486.7925229948455, 426.5903668886747,
                                 379.08806415640856, 340.37934643966736, 308.12380539881, 280.81035572981875,
                                 257.40329593786515, 237.15783653230255, 219.51729066528247,
                                 204.05243964417133))

fold_sfs <- function(given_sfs) {
  return_sfs = c(given_sfs[1] + given_sfs[15], 
                 given_sfs[2] + given_sfs[14], 
                 given_sfs[3] + given_sfs[13], 
                 given_sfs[4] + given_sfs[12], 
                 given_sfs[5] + given_sfs[11], 
                 given_sfs[6] + given_sfs[10], 
                 given_sfs[7] + given_sfs[9], 
                 given_sfs[8])
  return (return_sfs)
}

plot_sfs_comparison <- function(gamma_sfs, neugamma_sfs, empirical_sfs) {
  # It is assumed that the given sfs is folded, and describes 16 individuals.
  x_axis = 1:8
  gamma_sfs = gamma_sfs / sum(gamma_sfs)
  neugamma_sfs = neugamma_sfs / sum(neugamma_sfs)
  empirical_sfs = empirical_sfs / sum(empirical_sfs)
  df = data.frame(gamma_sfs = gamma_sfs,
                  neugamma_sfs = neugamma_sfs,
                  empirical_sfs = empirical_sfs,
                  x_axis = x_axis)
  p_df <- ggplot(data=df, aes(x=x_axis, y=gamma_sfs, color='gamma_sfs')) +
    geom_point() +
    geom_line() +
    geom_point(aes(x=x_axis, y=neugamma_sfs, color='neugamma_sfs')) +
    geom_line(aes(x=x_axis, y=neugamma_sfs, color='neugamma_sfs')) +
    geom_point(aes(x=x_axis, y=empirical_sfs, color='empirical_sfs')) +
    geom_line(aes(x=x_axis, y=empirical_sfs, color='empirical_sfs')) +
    scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
    scale_y_continuous(name='Proportion of SNps') +
    scale_color_manual(values=c('#FF6347', '#9400D3', '#009E73'),
                       name='Data Type',
                       breaks=c('gamma_sfs', 'neugamma_sfs', 'empirical_sfs'),
                       labels=c('gamma_sfs', 'neugamma_sfs', 'empirical_sfs')) +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5))
  return(p_df)
}
plot_sfs_comparison(seed_1_gamma_sfs, seed_1_neugamma_sfs, empirical_nonsyn_sfs) + ggtitle('seed_1 sfs comparison')
plot_sfs_comparison(seed_2_gamma_sfs, seed_2_neugamma_sfs, empirical_nonsyn_sfs) + ggtitle('seed_2 sfs comparison')
plot_sfs_comparison(seed_3_gamma_sfs, seed_3_neugamma_sfs, empirical_nonsyn_sfs) + ggtitle('seed_3 sfs comparison')
plot_sfs_comparison(seed_4_gamma_sfs, seed_4_neugamma_sfs, empirical_nonsyn_sfs) + ggtitle('seed_4 sfs comparison')
plot_sfs_comparison(seed_5_gamma_sfs, seed_5_neugamma_sfs, empirical_nonsyn_sfs) + ggtitle('seed_5 sfs comparison')

# gamma vs neugamma distribution
seed_1_gamma = rgamma(10000, shape=0.516, rate = 1/3.424E-05)
seed_2_gamma = rgamma(10000, shape=0.400, rate = 1/0.000421)
seed_3_gamma = rgamma(10000, shape=0.473, rate = 1/3.086E-05)
seed_4_gamma = rgamma(10000, shape=0.395, rate = 1/4.284E-05)
seed_5_gamma = rgamma(10000, shape=0.467, rate = 1/4.126E-05)

seed_1_neugamma = rgamma(10000, shape=0.998, rate = 1/1.963E-04)
seed_2_neugamma = rgamma(10000, shape=0.661, rate = 1/2.700E-04)
seed_3_neugamma = rgamma(10000, shape=0.990, rate = 1/4.167E-04)
seed_4_neugamma = rgamma(10000, shape=0.569, rate = 1/4.284E-04)
seed_5_neugamma = rgamma(10000, shape=0.974, rate = 1/4.259E-04)

seed_1_neugamma = c(seed_1_neugamma[1:1610] * 0, seed_1_neugamma[1611:10000])
seed_2_neugamma = c(seed_2_neugamma[1:1310] * 0, seed_2_neugamma[1311:10000])
seed_3_neugamma = c(seed_3_neugamma[1:2670] * 0, seed_3_neugamma[2671:10000])
seed_4_neugamma = c(seed_4_neugamma[1:1110] * 0, seed_4_neugamma[1111:10000])
seed_5_neugamma = c(seed_5_neugamma[1:2600] * 0, seed_5_neugamma[2601:10000])

seed_1_gamma = sort(seed_1_gamma)
seed_1_gamma[which(seed_1_gamma<0)] = 0
seed_1_gamma[which(seed_1_gamma>1)] = 1

seed_2_gamma = sort(seed_2_gamma)
seed_2_gamma[which(seed_2_gamma<0)] = 0
seed_2_gamma[which(seed_2_gamma>1)] = 1

seed_3_gamma = sort(seed_3_gamma)
seed_3_gamma[which(seed_3_gamma<0)] = 0
seed_3_gamma[which(seed_3_gamma>1)] = 1

seed_4_gamma = sort(seed_4_gamma)
seed_4_gamma[which(seed_4_gamma<0)] = 0
seed_4_gamma[which(seed_4_gamma>1)] = 1

seed_5_gamma = sort(seed_5_gamma)
seed_5_gamma[which(seed_5_gamma<0)] = 0
seed_5_gamma[which(seed_5_gamma>1)] = 1

seed_1_neugamma = sort(seed_1_neugamma)
seed_1_neugamma[which(seed_1_neugamma<0)] = 0
seed_1_neugamma[which(seed_1_neugamma>1)] = 1

seed_2_neugamma = sort(seed_2_neugamma)
seed_2_neugamma[which(seed_2_neugamma<0)] = 0
seed_2_neugamma[which(seed_2_neugamma>1)] = 1

seed_3_neugamma = sort(seed_3_neugamma)
seed_3_neugamma[which(seed_3_neugamma<0)] = 0
seed_3_neugamma[which(seed_3_neugamma>1)] = 1

seed_4_neugamma = sort(seed_4_neugamma)
seed_4_neugamma[which(seed_4_neugamma<0)] = 0
seed_4_neugamma[which(seed_4_neugamma>1)] = 1

seed_5_neugamma = sort(seed_5_neugamma)
seed_5_neugamma[which(seed_5_neugamma<0)] = 0
seed_5_neugamma[which(seed_5_neugamma>1)] = 1

data_1 = data.frame(seed_1_gamma, seed_1_neugamma)
data_2 = data.frame(seed_2_gamma, seed_2_neugamma)
data_3 = data.frame(seed_3_gamma, seed_3_neugamma)
data_4 = data.frame(seed_4_gamma, seed_4_neugamma)
data_5 = data.frame(seed_5_gamma, seed_5_neugamma)

p_qq_seed_1 <- ggplot(data=data_1, aes(x=seed_1_gamma, y=seed_1_neugamma)) + 
  geom_line()

p_qq_seed_2 <- ggplot(data=data_2, aes(x=seed_2_gamma, y=seed_2_neugamma)) + 
  geom_line()

p_qq_seed_3 <- ggplot(data=data_3, aes(x=seed_3_gamma, y=seed_3_neugamma)) + 
  geom_line()

p_qq_seed_4 <- ggplot(data=data_4, aes(x=seed_4_gamma, y=seed_4_neugamma)) + 
  geom_line()

p_qq_seed_5 <- ggplot(data=data_5, aes(x=seed_5_gamma, y=seed_5_neugamma)) + 
  geom_line()


p_qq_seed_1
p_qq_seed_2
p_qq_seed_3
p_qq_seed_4
p_qq_seed_5

den_gamma_1 <- density(seed_1_gamma)
dat_gamma_1 <- data.frame(x = den_gamma_1$x, y = den_gamma_1$y)
den_neugamma_1 <- density(seed_1_neugamma)
dat_neugamma_1 <- data.frame(x = den_neugamma_1$x, y = den_neugamma_1$y)

# Plot density as points

ggplot(data = dat_gamma_1, aes(x = x, y = y)) + 
  geom_point(size = 1, color = 'red') +
  geom_point(data=dat_neugamma_1, size = 1, color = 'blue') +
  xlim(-1, 1) + 
  ylab('density') +
  xlab('s') +
  theme_classic()

den_gamma_2 <- density(seed_2_gamma)
dat_gamma_2 <- data.frame(x = den_gamma_2$x, y = den_gamma_2$y)
den_neugamma_2 <- density(seed_2_neugamma)

dat_neugamma_2 <- data.frame(x = den_neugamma_2$x, y = den_neugamma_2$y)

# Plot density as points

ggplot(data = dat_gamma_2, aes(x = x, y = y)) + 
  geom_point(size = 1, color = 'red') +
  geom_point(data=dat_neugamma_2, size = 1, color = 'blue') +
  xlim(-1, 1) + 
  ylab('density') +
  xlab('s') +
  theme_classic()

den_gamma_3 <- density(seed_3_gamma)
dat_gamma_3 <- data.frame(x = den_gamma_3$x, y = den_gamma_3$y)
den_neugamma_3 <- density(seed_3_neugamma)

dat_neugamma_3 <- data.frame(x = den_neugamma_3$x, y = den_neugamma_3$y)

# Plot density as points

ggplot(data = dat_gamma_3, aes(x = x, y = y)) + 
  geom_point(size = 1, color = 'red') +
  geom_point(data=dat_neugamma_3, size = 1, color = 'blue') +
  xlim(-1, 1) + 
  ylab('density') +
  xlab('s') +
  theme_classic()

den_gamma_4 <- density(seed_4_gamma)
dat_gamma_4 <- data.frame(x = den_gamma_4$x, y = den_gamma_4$y)
den_neugamma_4 <- density(seed_4_neugamma)

dat_neugamma_4 <- data.frame(x = den_neugamma_4$x, y = den_neugamma_4$y)

# Plot density as points

ggplot(data = dat_gamma_4, aes(x = x, y = y)) + 
  geom_point(size = 1, color = 'red') +
  geom_point(data=dat_neugamma_4, size = 1, color = 'blue') +
  xlim(-1, 1) + 
  ylab('density') +
  xlab('s') +
  theme_classic()


den_gamma_5 <- density(seed_5_gamma)
dat_gamma_5 <- data.frame(x = den_gamma_5$x, y = den_gamma_5$y)
den_neugamma_5 <- density(seed_5_neugamma)

dat_neugamma_5 <- data.frame(x = den_neugamma_5$x, y = den_neugamma_5$y)

# Plot density as points

ggplot(data = dat_gamma_5, aes(x = x, y = y)) + 
  geom_point(size = 1, color = 'red') +
  geom_point(data=dat_neugamma_5, size = 1, color = 'blue') +
  xlim(-1, 1) + 
  ylab('density') +
  xlab('s') +
  theme_classic()

# DFE_visual_comparison.R
# Author: Jonathan Mah
# Date: 20200616
# This script is used to visually compare different DFE's.

ggplot(melt(seed_1_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 1')

seed_1_df <- data.frame(gamma = seed_1_gamma,
                        neugamma = seed_1_neugamma)

ggplot(melt(seed_1_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(1, 1e-1, 1e-2, 1e-3, 1e-4, 1e-5, 1e-6, 1e-7, 1e-8, 1e-9, 1e-10, 1e-11, 1e-12, 1e-13, 1e-14, 1e-15, 1e-16)) +
  scale_x_log10() +
  ggtitle('Seed 1')

seed_2_df <- data.frame(gamma = seed_2_gamma,
                        neugamma = seed_2_neugamma)

ggplot(melt(seed_2_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(1, 0.1, 0.01, 0.001, 0.0001, 0.00001)) +
  scale_x_log10() +
  ggtitle('Seed 2')

seed_3_df <- data.frame(gamma = seed_3_gamma,
                        neugamma = seed_3_neugamma)

ggplot(melt(seed_3_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(1, 0.1, 0.01, 0.001, 0.0001, 0.00001)) +
  scale_x_log10() +
  ggtitle('Seed 3')

seed_4_df <- data.frame(gamma = seed_4_gamma,
                        neugamma = seed_4_neugamma)

ggplot(melt(seed_4_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(1, 0.1, 0.01, 0.001, 0.0001, 0.00001)) +
  scale_x_log10() +
  ggtitle('Seed 4')

seed_5_df <- data.frame(gamma = seed_5_gamma,
                        neugamma = seed_5_neugamma)

ggplot(melt(seed_5_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(1, 0.1, 0.01, 0.001, 0.0001, 0.00001)) +
  scale_x_log10() +
  ggtitle('Seed 5')

# seed_1_df %>% pull(given) %>% hist()

# seed_1_df %>% pull(given) %>% summary()

# seed_1_df %>% pull(inferred) %>% summary()

# seed_1_df %>% pull(given) %>% cut(breaks=c(0.0001, 0.001, 0.01, 0.1, 1), include.lowest = T)

# seed_1_df %>% pull(inferred) %>% cut(breaks=c(0.0001, 0.001, 0.01, 0.1, 1), include.lowest = T)

