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

seed_1_neutral_sfs = fold_sfs(c(4312.536237273868, 2795.008226935307, 2214.9955240693894, 
                                1877.5001246731065, 1642.7725659120038, 1463.6318039345215, 
                                1319.3930769607691, 1199.3495226194416, 1097.2635380568345, 
                                1009.1607970479449, 932.3252850421685, 864.794870303443, 
                                805.0880089640938, 752.0461263620016, 704.7377910051106))

seed_2_neutral_sfs = fold_sfs(c(3793.8229147309735, 2355.11119843069, 1874.3165890597022,
                                1632.9075894502962, 1487.2353517988486, 1389.4262751091953,
                                1318.9656789298274, 1265.5971609948908, 1223.6231263055631,
                                1189.6252163695974, 1161.428218160712, 1137.5820502904276,
                                1117.0828468690265, 1099.2135839372136, 1083.4484590493405))

seed_3_neutral_sfs = fold_sfs(c(3978.3859533331747, 2447.05180350679, 1930.1873346771342,
                                1666.8818872139727, 1505.013645464823, 1393.885214123565,
                                1311.7718180450145, 1247.8120086115262, 1195.9720255614993,
                                1152.6317742450965, 1115.4876254176934, 1083.0038490392064,
                                1054.1172478631213, 1028.0683842063504, 1004.3003199926869))

seed_4_neutral_sfs = fold_sfs(c(3956.7036621398256, 2428.0309610068957, 1901.837453943757,
                                1626.4941406870405, 1451.7925494726594, 1327.6764292372693,
                                1232.6934815749917, 1156.1153785715594, 1091.979233993239, 
                                1036.7046081983651, 988.0104734302446, 944.3737545207605,
                                904.7377997122046, 868.3458049990845, 834.6408751107257))

seed_5_neutral_sfs = fold_sfs(c(4181.628181281013, 2727.549430025411, 2169.002893496131,
                                1842.4227322882987, 1614.3600432123637, 1439.7388971939317,
                                1298.779787522588, 1181.2306749374434, 1081.1082843064155,
                                994.59214744668, 919.0651336445619, 852.6317890126271, 
                                793.8573171940453, 741.6169882051198, 695.0045395690929))

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

plot_neutral_sfs_comparison <- function(synonymous_sfs, neutral_sfs) {
  # It is assumed that the given sfs is folded, and describes 16 individuals.
  x_axis = 1:8
  synonymous_sfs = synonymous_sfs / sum(synonymous_sfs)
  neutral_sfs = neutral_sfs / sum(neutral_sfs)
  df = data.frame(synonymous_sfs = synonymous_sfs,
                  neutral_sfs = neutral_sfs,
                  x_axis = x_axis)
  p_df <- ggplot(data=df, aes(x=x_axis, y=synonymous_sfs, color='synonymous_sfs')) +
    geom_point() +
    geom_line() +
    geom_point(aes(x=x_axis, y=neutral_sfs, color='neutral_sfs')) +
    geom_line(aes(x=x_axis, y=neutral_sfs, color='neutral_sfs')) +
    scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
    scale_y_continuous(name='Proportion of SNps') +
    scale_color_manual(values=c('#FF6347', '#9400D3'),
                       name='Data Type',
                       breaks=c('synonymous_sfs', 'neutral_sfs'),
                       labels=c('empirical syn sfs', 'neutral-inferred nonsyn sfs')) +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5))
  return(p_df)
}

compute_bar <- function(distribution) {
  den <- density(distribution)
  data <- data.frame(x=den$x, y=den$y)
  bin <- .bincode(distribution, breaks=c(0, 10e-5, 10e-4, 10e-3, 10e-1), right=TRUE)
  hist <- hist(bin, breaks=c(0, 1, 2, 3, 4), freq = FALSE)
  print(hist$density)
  return(hist$density)
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

plot_neutral_sfs_comparison(empirical_syn_sfs_1, seed_1_neutral_sfs) + ggtitle('seed_1 neutral sfs comparison')
plot_neutral_sfs_comparison(empirical_syn_sfs_2, seed_2_neutral_sfs) + ggtitle('seed_2 neutral sfs comparison')
plot_neutral_sfs_comparison(empirical_syn_sfs_3, seed_3_neutral_sfs) + ggtitle('seed_3 neutral sfs comparison')
plot_neutral_sfs_comparison(empirical_syn_sfs_4, seed_4_neutral_sfs) + ggtitle('seed_4 neutral sfs comparison')
plot_neutral_sfs_comparison(empirical_syn_sfs_5, seed_5_neutral_sfs) + ggtitle('seed_5 neutral sfs comparison')

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

seed_1_neugamma = c(seed_1_neugamma[1:1610] * 0 + 0.000000001, seed_1_neugamma[1611:10000])
seed_2_neugamma = c(seed_2_neugamma[1:1310] * 0 + 0.000000001, seed_2_neugamma[1311:10000])
seed_3_neugamma = c(seed_3_neugamma[1:2670] * 0 + 0.000000001, seed_3_neugamma[2671:10000])
seed_4_neugamma = c(seed_4_neugamma[1:1110] * 0 + 0.000000001, seed_4_neugamma[1111:10000])
seed_5_neugamma = c(seed_5_neugamma[1:2600] * 0 + 0.000000001, seed_5_neugamma[2601:10000])

seed_1_gamma = sort(seed_1_gamma)
seed_1_gamma[which(seed_1_gamma>1)] = 1

seed_2_gamma = sort(seed_2_gamma)
seed_2_gamma[which(seed_2_gamma>1)] = 1

seed_3_gamma = sort(seed_3_gamma)
seed_3_gamma[which(seed_3_gamma>1)] = 1

seed_4_gamma = sort(seed_4_gamma)
seed_4_gamma[which(seed_4_gamma>1)] = 1

seed_5_gamma = sort(seed_5_gamma)
seed_5_gamma[which(seed_5_gamma>1)] = 1

seed_1_neugamma = sort(seed_1_neugamma)
seed_1_neugamma[which(seed_1_neugamma<0)] = 0.000000001
seed_1_neugamma[which(seed_1_neugamma>1)] = 1 - 0.000000001

seed_2_neugamma = sort(seed_2_neugamma)
seed_2_neugamma[which(seed_2_neugamma<0)] = 0.000000001
seed_2_neugamma[which(seed_2_neugamma>1)] = 1 - 0.000000001

seed_3_neugamma = sort(seed_3_neugamma)
seed_3_neugamma[which(seed_3_neugamma<0)] = 0.000000001
seed_3_neugamma[which(seed_3_neugamma>1)] = 1 - 0.000000001

seed_4_neugamma = sort(seed_4_neugamma)
seed_4_neugamma[which(seed_4_neugamma<0)] = 0.000000001
seed_4_neugamma[which(seed_4_neugamma>1)] = 1 - 0.000000001

seed_5_neugamma = sort(seed_5_neugamma)
seed_5_neugamma[which(seed_5_neugamma<0)] = 0.000000001
seed_5_neugamma[which(seed_5_neugamma>1)] = 1 - 0.000000001

## binning
ancestral <-rgamma(1000000, shape = 0.0988, scale = 4.45514494) 

ancestral <-replace(ancestral, ancestral > 1, 1)

ancestral_bin <- .bincode(ancestral,breaks=c(0,10e-5,10e-4,10e-3,10e-1),right=TRUE)

ancestral_hist <-hist(ancestral_bin,breaks = c(0,1,2,3,4),freq = FALSE,main="AW",xlab="s",xaxt="n")

ancestral_bar <- ancestral_hist$density

bin_neugamma_1 <- .bincode(seed_1_neugamma, breaks=c(0, 10e-5, 10e-4, 10e-3, 10e-1), right=TRUE)
hist_neugamma_1 <- hist(bin_neugamma_1, breaks = c(0, 1, 2, 3, 4), freq = FALSE)
bar_neugamma_1 <- hist_neugamma_1$density

bar_gamma_1 <- compute_bar(seed_1_gamma)
bar_gamma_2 <- compute_bar(seed_2_gamma)
bar_gamma_3 <- compute_bar(seed_3_gamma)
bar_gamma_4 <- compute_bar(seed_4_gamma)
bar_gamma_5 <- compute_bar(seed_5_gamma)

TAB_gamma <- rbind(ancestral_bar, bar_gamma_1, bar_gamma_2, bar_gamma_3, bar_gamma_4, bar_gamma_5) 

barplot(TAB_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="Gamma distributed DFE")
legend("top", inset=.02, c("Ancestral", "Seed 1", "Seed 2", "Seed 3", "Seed 4", "Seed 5"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
       horiz=FALSE, cex=1)

bar_neugamma_1 <- compute_bar(seed_1_neugamma)
bar_neugamma_2 <- compute_bar(seed_2_neugamma)
bar_neugamma_3 <- compute_bar(seed_3_neugamma)
bar_neugamma_4 <- compute_bar(seed_4_neugamma)
bar_neugamma_5 <- compute_bar(seed_5_neugamma)

TAB_neugamma <- rbind(ancestral_bar, bar_neugamma_1, bar_neugamma_2, bar_neugamma_3, bar_neugamma_4, bar_neugamma_5) 

barplot(TAB_neugamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="Neutral-gamma distributed DFE")
legend("top", inset=.02, c("Ancestral", "Seed 1", "Seed 2", "Seed 3", "Seed 4", "Seed 5"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
       horiz=FALSE, cex=1)
