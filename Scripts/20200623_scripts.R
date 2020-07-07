library(ggplot2)
library(MASS)
library(reshape2)

seed(1)

empirical_syn_sfs_1 = c(2317, 1626, 1393, 1277, 1178, 1159, 1138, 518)
empirical_syn_sfs_2 = c(2256, 1554, 1347, 1320, 1217, 1203, 1158, 568)
empirical_syn_sfs_3 = c(2285, 1588, 1359, 1277, 1198, 1164, 1152, 571)
empirical_syn_sfs_4 = c(2304, 1584, 1342, 1220, 1226, 1124, 1091, 568)
empirical_syn_sfs_5 = c(2244, 1640, 1331, 1252, 1189, 1092, 1079, 589)

empirical_nonsyn_sfs_1 = c(2853, 1548, 1058, 947, 779, 717, 682, 336)
empirical_nonsyn_sfs_2 = c(2750, 1515, 1070, 887, 774, 802, 715, 352)
empirical_nonsyn_sfs_3 = c(2902, 1479, 1060, 877, 761, 753, 693, 331)
empirical_nonsyn_sfs_4 = c(2852, 1494, 1070, 812, 806, 761, 727, 359)
empirical_nonsyn_sfs_5 = c(2878, 1454, 1077, 944, 763, 769, 721, 364)
seed_1_gamma_sfs = fold_sfs(c(2696.9088683164073, 1365.9878178630488, 924.9939535432802,
                              700.3890652427212, 561.1123017302035, 464.65137665076685, 
                              393.1460969394661, 337.7439088050547, 293.50805425636065,
                              257.4292905103885, 227.54186088837378, 202.4895413373991,
                              181.2951074002271, 163.22961629453752, 147.7340871922324))
seed_2_gamma_sfs = fold_sfs(c(2521.430934811742, 1211.1809516794553, 807.2174097436657,
                              618.3537098518309, 511.0229895116078, 442.44653244499017,
                              395.02185113766063, 360.2856399540327, 333.7054111926377,
                              312.6524808902214, 295.50558879253157, 281.21457961262536,
                              269.0714482644643, 258.58268840518457, 249.3944694136393))
seed_3_gamma_sfs = fold_sfs(c(2647.9490401249554, 1251.691658406164, 819.6417603993741,
                              617.6009909040057, 503.0091509566495, 430.03388379294944,
                              379.7708993327433, 343.12018814518194, 315.20693676069453,
                              293.2049562064319, 275.37256320428287, 260.58281845493264,
                              248.0769067448377, 237.32662822291385, 227.95381779166968))
seed_4_gamma_sfs = fold_sfs(c(2627.0167485544694, 1245.137590545378, 827.3937146340895,
                              632.1614097382427, 519.6881223305127, 446.1459651240071,
                              393.78127542189054, 354.15129921300246, 322.7670146587864,
                              297.03575598959395, 275.361074775225, 256.70829390368186,
                              240.37805914468206, 225.88074854321698, 212.86315811055186))
seed_5_gamma_sfs = fold_sfs(c(2622.693896689944, 1349.5528028124925, 925.290642282597, 
                              707.4597878611731, 571.2234793678472, 476.1028546365974,
                              405.0768420464194, 349.69143060751276, 305.21778703062733,
                              268.7624703901293, 238.42719581322083, 212.896205572922,
                              191.21689234461155, 172.67526832263064, 156.7212460915782))

seed_1_neugamma_sfs = fold_sfs(c(2703.7558379230004, 1365.340534167985, 921.9207159387556,
                                 696.8562817878371, 557.9478504934174, 462.19284545048754,
                                 391.50586252884784, 336.92784954818177, 293.47201306741215,
                                 258.1071237122919, 228.8597746064787, 204.37349850819732,
                                 183.6745984913522, 166.03946528228394, 150.91517513356365))
seed_2_neugamma_sfs = fold_sfs(c(2527.4686637651, 1211.8982171892612, 805.6100401387841,
                                 615.9864025679462, 508.6087399655466, 440.3035968248622,
                                 393.28573396829586, 359.00570756214375, 332.89006455278144,
                                 312.2908985148228, 295.5784352030363, 281.69934519238876,
                                 269.9451038449459, 259.8229683942465, 250.98044570212105))
seed_3_neugamma_sfs = fold_sfs(c(2646.155334165589, 1244.8504579426133, 811.1769552610662,
                                 609.7098843061761, 496.6576236920767, 425.57023756520937,
                                 377.2569138553558, 342.49105299336816, 316.3471393893437,
                                 295.98394434944595, 279.66108368191556, 266.25991699897133,
                                 255.03242193610913, 245.4615506642529, 237.17968781083127))
seed_4_neugamma_sfs = fold_sfs(c(2625.6704829829173, 1230.6800082029185, 811.4341497662463,
                                 618.7548332873902, 509.9387853619246, 440.12434323625246,
                                 391.2184903008788, 354.6908318551566, 326.0545121813095,
                                 302.7482885623849, 283.2136610599213, 266.4522205022334,
                                 251.7966472197447, 238.7847351423026, 227.08646551178995))
seed_5_neugamma_sfs = fold_sfs(c(2613.9724715812245, 1332.091487262445, 908.0416083493142,
                                 693.3270988951997, 561.0430692011972, 469.90147550343556,
                                 402.5639441826446, 350.46632828229684, 308.8598094788174,
                                 274.87001896680135, 246.63355820218806, 222.8745331584942,
                                 202.68010314403446, 185.37364135976412, 170.43906632593988))

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

plot_empirical_sfs_comparison <- function(synonymous_sfs, nonsynonymous_sfs) {
  # It is assumed that the given sfs is folded, and describes 16 individuals.
  x_axis = 1:8
  synonymous_sfs = synonymous_sfs / sum(synonymous_sfs)
  nonsynonymous_sfs = nonsynonymous_sfs / sum(nonsynonymous_sfs)
  df = data.frame(synonymous_sfs = synonymous_sfs,
                  nonsynonymous_sfs = nonsynonymous_sfs,
                  x_axis = x_axis)
  p_df <- ggplot(data=df, aes(x=x_axis, y=synonymous_sfs, color='synonymous_sfs')) +
    geom_point() +
    geom_line() +
    geom_point(aes(x=x_axis, y=nonsynonymous_sfs, color='nonsynonymous_sfs')) +
    geom_line(aes(x=x_axis, y=nonsynonymous_sfs, color='nonsynonymous_sfs')) +
    scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
    scale_y_continuous(name='Proportion of SNps') +
    scale_color_manual(values=c('#FF6347', '#9400D3'),
                       name='Data Type',
                       breaks=c('synonymous_sfs', 'nonsynonymous_sfs'),
                       labels=c('synonymous_sfs', 'nonsynonymous_sfs')) +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5))
  return(p_df)
}

plot_sfs_comparison(seed_1_gamma_sfs, seed_1_neugamma_sfs, empirical_nonsyn_sfs_1) + ggtitle('seed_1 sfs comparison')
plot_sfs_comparison(seed_2_gamma_sfs, seed_2_neugamma_sfs, empirical_nonsyn_sfs_2) + ggtitle('seed_2 sfs comparison')
plot_sfs_comparison(seed_3_gamma_sfs, seed_3_neugamma_sfs, empirical_nonsyn_sfs_3) + ggtitle('seed_3 sfs comparison')
plot_sfs_comparison(seed_4_gamma_sfs, seed_4_neugamma_sfs, empirical_nonsyn_sfs_4) + ggtitle('seed_4 sfs comparison')
plot_sfs_comparison(seed_5_gamma_sfs, seed_5_neugamma_sfs, empirical_nonsyn_sfs_5) + ggtitle('seed_5 sfs comparison')

plot_empirical_sfs_comparison(empirical_syn_sfs_1, empirical_nonsyn_sfs_1) + ggtitle('seed_1 empirical sfs comparison')
plot_empirical_sfs_comparison(empirical_syn_sfs_2, empirical_nonsyn_sfs_2) + ggtitle('seed_2 empirical sfs comparison')
plot_empirical_sfs_comparison(empirical_syn_sfs_3, empirical_nonsyn_sfs_3) + ggtitle('seed_3 empirical sfs comparison')
plot_empirical_sfs_comparison(empirical_syn_sfs_4, empirical_nonsyn_sfs_4) + ggtitle('seed_4 empirical sfs comparison')
plot_empirical_sfs_comparison(empirical_syn_sfs_5, empirical_nonsyn_sfs_5) + ggtitle('seed_5 empirical sfs comparison')

x_axis = 1:8
empirical_nonsyn_sfs_1 = empirical_nonsyn_sfs_1 / sum(empirical_nonsyn_sfs_1)
empirical_nonsyn_sfs_2 = empirical_nonsyn_sfs_2 / sum(empirical_nonsyn_sfs_2)
empirical_nonsyn_sfs_3 = empirical_nonsyn_sfs_3 / sum(empirical_nonsyn_sfs_3)
empirical_nonsyn_sfs_4 = empirical_nonsyn_sfs_4 / sum(empirical_nonsyn_sfs_4)
empirical_nonsyn_sfs_5 = empirical_nonsyn_sfs_5 / sum(empirical_nonsyn_sfs_5)
df = data.frame(empirical_nonsyn_sfs_1,
                empirical_nonsyn_sfs_2,
                empirical_nonsyn_sfs_3,
                empirical_nonsyn_sfs_4,
                empirical_nonsyn_sfs_5,
                x_axis = x_axis)
p_df <- ggplot(data=df, aes(x=x_axis, y=empirical_nonsyn_sfs_1, color='empirical_nonsyn_sfs_1')) +
  geom_point() +
  geom_line() +
  geom_point(aes(x=x_axis, y=empirical_nonsyn_sfs_2, color='empirical_nonsyn_sfs_2')) +
  geom_line(aes(x=x_axis, y=empirical_nonsyn_sfs_2, color='empirical_nonsyn_sfs_2')) +
  geom_point(aes(x=x_axis, y=empirical_nonsyn_sfs_3, color='empirical_nonsyn_sfs_3')) +
  geom_line(aes(x=x_axis, y=empirical_nonsyn_sfs_3, color='empirical_nonsyn_sfs_3')) +
  geom_point(aes(x=x_axis, y=empirical_nonsyn_sfs_4, color='empirical_nonsyn_sfs_4')) +
  geom_line(aes(x=x_axis, y=empirical_nonsyn_sfs_4, color='empirical_nonsyn_sfs_4')) +
  geom_point(aes(x=x_axis, y=empirical_nonsyn_sfs_5, color='empirical_nonsyn_sfs_5')) +
  geom_line(aes(x=x_axis, y=empirical_nonsyn_sfs_5, color='empirical_nonsyn_sfs_5')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Proportion of SNps') +
  scale_color_manual(values=c('red', 'orange', 'purple', 'blue', 'green'),
                     name='Data Type',
                     breaks=c('empirical_nonsyn_sfs_1', 'empirical_nonsyn_sfs_2', 
                              'empirical_nonsyn_sfs_3', 'empirical_nonsyn_sfs_4', 
                              'empirical_nonsyn_sfs_5'),
                     labels=c('empirical_nonsyn_sfs_1', 'empirical_nonsyn_sfs_2', 
                              'empirical_nonsyn_sfs_3', 'empirical_nonsyn_sfs_4', 
                              'empirical_nonsyn_sfs_5')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('SFS comparison of 5 random simulations')

p_df

# gamma vs neugamma distribution
seed_1_gamma = rgamma(10000, shape=0.52218345, scale = 24.12967973)
seed_2_gamma = rgamma(10000, shape=0.42616827, scale = 82.97655387)
seed_3_gamma = rgamma(10000, shape=0.47562804, scale = 64.7016557)
seed_4_gamma = rgamma(10000, shape=0.39553438, scale = 62.81749496)
seed_5_gamma = rgamma(10000, shape=0.47250698, scale = 28.53572553)

seed_1_neugamma = rgamma(10000, shape=0.67459489, scale = 19.0715012)
seed_2_neugamma = rgamma(10000, shape=0.56581974, scale = 65.54497081)
seed_3_neugamma = rgamma(10000, shape=0.99456779, scale = 33.42607545)
seed_4_neugamma = rgamma(10000, shape=0.96321807, scale = 26.79482919)
seed_5_neugamma = rgamma(10000, shape=0.99190092, scale = 14.82176145)

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

ggplot(data=dat_gamma_1, aes(x=x, y=y, color='dat_gamma_1')) + 
  geom_point(size = 1) +
  geom_point(data=dat_neugamma_1, size = 1, aes(x=x, y=y, color='dat_neugamma_1')) +
  xlim(-1, 1) + 
  ylab('density') +
  xlab('s') +
  scale_color_manual(values=c('red', 'blue'),
                     name='Data Type',
                     breaks=c('dat_gamma_1', 'dat_neugamma_1'),
                     labels=c('Gamma', 'Neugamma')) +
  ggtitle('Seed 1 Continuous DFE comparison') +
  theme_classic()

den_gamma_2 <- density(seed_2_gamma)
dat_gamma_2 <- data.frame(x = den_gamma_2$x, y = den_gamma_2$y)
den_neugamma_2 <- density(seed_2_neugamma)

dat_neugamma_2 <- data.frame(x = den_neugamma_2$x, y = den_neugamma_2$y)

# Plot density as points

ggplot(data=dat_gamma_2, aes(x=x, y=y, color='dat_gamma_2')) + 
  geom_point(size = 1) +
  geom_point(data=dat_neugamma_2, size = 1, aes(x=x, y=y, color='dat_neugamma_2')) +
  xlim(-1, 1) + 
  ylab('density') +
  xlab('s') +
  scale_color_manual(values=c('red', 'blue'),
                     name='Data Type',
                     breaks=c('dat_gamma_2', 'dat_neugamma_2'),
                     labels=c('Gamma', 'Neugamma')) +
  ggtitle('Seed 2 Continuous DFE comparison') +
  theme_classic()

den_gamma_3 <- density(seed_3_gamma)
dat_gamma_3 <- data.frame(x = den_gamma_3$x, y = den_gamma_3$y)
den_neugamma_3 <- density(seed_3_neugamma)

dat_neugamma_3 <- data.frame(x = den_neugamma_3$x, y = den_neugamma_3$y)

# Plot density as points

ggplot(data=dat_gamma_3, aes(x=x, y=y, color='dat_gamma_3')) + 
  geom_point(size = 1) +
  geom_point(data=dat_neugamma_3, size = 1, aes(x=x, y=y, color='dat_neugamma_3')) +
  xlim(-1, 1) + 
  ylab('density') +
  xlab('s') +
  scale_color_manual(values=c('red', 'blue'),
                     name='Data Type',
                     breaks=c('dat_gamma_3', 'dat_neugamma_3'),
                     labels=c('Gamma', 'Neugamma')) +
  ggtitle('Seed 3 Continuous DFE comparison') +
  theme_classic()

den_gamma_4 <- density(seed_4_gamma)
dat_gamma_4 <- data.frame(x = den_gamma_4$x, y = den_gamma_4$y)
den_neugamma_4 <- density(seed_4_neugamma)

dat_neugamma_4 <- data.frame(x = den_neugamma_4$x, y = den_neugamma_4$y)

# Plot density as points

ggplot(data=dat_gamma_4, aes(x=x, y=y, color='dat_gamma_4')) + 
  geom_point(size = 1) +
  geom_point(data=dat_neugamma_4, size = 1, aes(x=x, y=y, color='dat_neugamma_4')) +
  xlim(-1, 1) + 
  ylab('density') +
  xlab('s') +
  scale_color_manual(values=c('red', 'blue'),
                     name='Data Type',
                     breaks=c('dat_gamma_4', 'dat_neugamma_4'),
                     labels=c('Gamma', 'Neugamma')) +
  ggtitle('Seed 4 Continuous DFE comparison') +
  theme_classic()

den_gamma_5 <- density(seed_5_gamma)
dat_gamma_5 <- data.frame(x = den_gamma_5$x, y = den_gamma_5$y)
den_neugamma_5 <- density(seed_5_neugamma)

dat_neugamma_5 <- data.frame(x = den_neugamma_5$x, y = den_neugamma_5$y)

# Plot density as points

ggplot(data=dat_gamma_5, aes(x=x, y=y, color='dat_gamma_5')) + 
  geom_point(size = 1) +
  geom_point(data=dat_neugamma_5, size = 1, aes(x=x, y=y, color='dat_neugamma_5')) +
  xlim(-1, 1) + 
  ylab('density') +
  xlab('s') +
  scale_color_manual(values=c('red', 'blue'),
                     name='Data Type',
                     breaks=c('dat_gamma_5', 'dat_neugamma_5'),
                     labels=c('Gamma', 'Neugamma')) +
  ggtitle('Seed 5 Continuous DFE comparison') +
  theme_classic()

# DFE_visual_comparison.R
# Author: Jonathan Mah
# Date: 20200616
# This script is used to visually compare different DFE's.

seed_1_gamma[which(seed_1_gamma<0.0001)] = 0.0001
seed_2_gamma[which(seed_2_gamma<0.0001)] = 0.0001
seed_3_gamma[which(seed_3_gamma<0.0001)] = 0.0001
seed_4_gamma[which(seed_4_gamma<0.0001)] = 0.0001
seed_5_gamma[which(seed_5_gamma<0.0001)] = 0.0001

seed_1_neugamma[which(seed_1_neugamma<0.0001)] = 0.0001
seed_2_neugamma[which(seed_2_neugamma<0.0001)] = 0.0001
seed_3_neugamma[which(seed_3_neugamma<0.0001)] = 0.0001
seed_4_neugamma[which(seed_4_neugamma<0.0001)] = 0.0001
seed_5_neugamma[which(seed_5_neugamma<0.0001)] = 0.0001

# ggplot(melt(seed_1_df), aes(x=value, y=..density.., fill = variable)) + 
#   geom_histogram(position = "dodge",
#                  breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
#   scale_x_log10() +
#   ggtitle('Seed 1')

seed_1_df <- data.frame(gamma = seed_1_gamma,
                        neugamma = seed_1_neugamma)

ggplot(melt(seed_1_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 1')

seed_2_df <- data.frame(gamma = seed_2_gamma,
                        neugamma = seed_2_neugamma)

ggplot(melt(seed_2_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 2')

seed_3_df <- data.frame(gamma = seed_3_gamma,
                        neugamma = seed_3_neugamma)

ggplot(melt(seed_3_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 3')

seed_4_df <- data.frame(gamma = seed_4_gamma,
                        neugamma = seed_4_neugamma)

ggplot(melt(seed_4_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 4')

seed_5_df <- data.frame(gamma = seed_5_gamma,
                        neugamma = seed_5_neugamma)

ggplot(melt(seed_5_df), aes(x=value, y=..density.., fill = variable)) + 
  geom_histogram(position = "dodge",
                 breaks=c(0.0001, 0.001, 0.01, 0.1, 1)) +
  scale_x_log10() +
  ggtitle('Seed 5')
