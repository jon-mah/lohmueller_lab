library(ggplot2)
library(MASS)
library(reshape2)

seed(1)

AW_time_neutral_syn_0 = c(1336, 925, 863, 659, 654, 588, 602, 303) * 6.3
AW_time_neutral_syn_100 = c(1333, 981, 827, 693, 628, 633, 590, 272) * 6.3
AW_time_neutral_syn_500 = c(1318, 959, 801, 731, 636, 601, 553, 323) * 6.3
AW_time_neutral_syn_1000 = c(1359, 919, 772, 661, 621, 627, 578, 293) * 6.3

AW_time_neutral_nonsyn_0 = c(1149, 818, 580, 506, 438, 410, 370, 222) * 5.24
AW_time_neutral_nonsyn_100 = c(1149, 767, 625, 504, 436, 412, 384, 219) * 5.24
AW_time_neutral_nonsyn_500 = c(1159, 736, 629, 502, 408, 443, 395, 172) * 5.24
AW_time_neutral_nonsyn_1000 = c(1160, 730, 600, 526, 471, 410, 372, 176) * 5.24

AW_time_neutral_model_0 = fold_sfs(c(1083.8217423659942, 639.105625811822, 473.63170077844126,
                                     377.47862087357674, 311.97443975854156, 263.89914351270386,
                                     227.11424274753506, 198.20174460574117, 175.0296053475136,
                                     156.16759764134207, 140.6094372022964, 127.62395208757901,
                                     116.66774309060558, 107.33022345237016, 99.29716418704837)) * 5.24
AW_time_neutral_model_100 = fold_sfs(c(1057.611492856535, 656.6488915864197, 488.50978463075324,
                                       386.0687406083278, 315.6163315896187, 264.3252836738079,
                                       225.67359608464324, 195.80758744895576, 172.25317408020442,
                                       153.34186590199022, 137.9121515675515, 125.13702698245214,
                                       114.41720121761925, 105.31183156049798, 97.49216623984152)) * 5.24
AW_time_neutral_model_500 = fold_sfs(c(1068.1744572772743, 646.0107438866596, 478.78883930968374,
                                       378.8932484860498, 310.4212432864932, 260.4128516863096,
                                       222.52539240492735, 193.08912082127742, 169.7655042400789,
                                       150.97498526351652, 135.6103835387216, 122.87584091550994,
                                       112.18863636605177, 103.11582411324686, 95.3316928363605)) * 5.24
AW_time_neutral_model_1000 = fold_sfs(c(1072.3418958941693, 593.9448005353303, 436.3217173579642,
                                        352.6135631661072, 298.2093951549262, 258.83001597338273, 
                                        228.44413131887634, 204.0249380938084, 183.8589056725876, 
                                        166.88466381995661, 152.39733113324644, 139.90225399575755,
                                        129.03669416999378, 119.5251067762354, 111.15218419773238)) * 5.24


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

# Recap_gamma_sfs
recap_1_gamma_sfs = fold_sfs(c(5670.828535664526, 3336.7227431058723, 2317.172757888442,
                               1738.980634263227, 1374.754124653865, 1128.9954391704384,
                               954.1644460026565, 824.37003875558, 724.6000141089215,
                               645.6950854951266, 581.8143722716296, 529.084721618632,
                               484.8476369923741, 447.22224294080155, 414.8421645823929))
recap_2_gamma_sfs = fold_sfs(c(5614.788229377486, 3332.9571074921923, 2306.2812657468767,
                               1725.1196214483641, 1361.3301134336857, 1117.123585819368,
                               943.9436642517369, 815.582344640432, 716.980179139859,
                               639.0126501470386, 575.8876664222278, 523.7746380462813,
                               480.04781831661023, 442.8505325896902, 410.83416711825276))
recap_3_gamma_sfs = fold_sfs(c(5585.194704727483, 3406.5616641473566, 2348.8105654614046,
                               1748.9436511244116, 1376.5554239475102, 1128.3281253928662,
                               953.0405911099102, 823.3941130406671, 723.8962344621092,
                               645.2450657552445, 581.5693916635017, 528.9984933584927,
                               484.8832352087187, 447.35165727279576, 415.0443527335086))
recap_4_gamma_sfs = fold_sfs(c(5590.120019606571, 3315.6074080062713, 2288.3972941680076,
                               1708.8581386215742, 1347.2961609304364, 1105.135115547361,
                               933.6295630947939, 806.5946063664608, 709.0423701963281,
                               631.9160924322148, 569.4762232185708, 517.9304345406797,
                               474.68042860035166, 437.889338073104, 406.2230567957856))
recap_5_gamma_sfs = fold_sfs(c(5684.701163486969, 3411.129529948263, 2358.260080772335,
                               1760.7327674531575, 1387.5237908221686, 1137.61280558636,
                               960.7087088849398, 829.7406851613198, 729.2103072233732,
                               649.7563009887192, 585.4495880505467, 532.374756959042,
                               487.85041707548936, 449.98167148016034, 417.3926908157998))

# recap_nonsyn_sfs
recap_1_nonsyn_sfs = c(6086, 3776, 2856, 2217, 1966, 1792, 1755, 733)
recap_2_nonsyn_sfs = c(5978, 3803, 2713, 2257, 1978, 1803, 1628, 814)
recap_3_nonsyn_sfs = c(5959, 3837, 2879, 2293, 1969, 1796, 1618, 817)
recap_4_nonsyn_sfs = c(5921, 3721, 2821, 2160, 1922, 1799, 1663, 831)
recap_5_nonsyn_sfs = c(6111, 3801, 2974, 2218, 1949, 1842, 1638, 849)

# recap_syn_sfs
recap_1_syn_sfs = c(8459, 5744, 4354, 3671, 3246, 3037, 2778, 1440)
recap_2_syn_sfs = c(8486, 5752, 4387, 3683, 3244, 3045, 2784, 1373)
recap_3_syn_sfs = c(8361, 5702, 4487, 3594, 3133, 2964, 2793, 1428)
recap_4_syn_sfs = c(8465, 5719, 4368, 3699, 3187, 2928, 2859, 1349)
recap_5_syn_sfs = c(8334, 5704, 4328, 3639, 3265, 2895, 2784, 1396)

pop_4000_neutral_nonsyn_0 = c(106, 86, 54, 33, 42, 35, 23, 20)
pop_4000_neutral_nonsyn_50 = c(111, 73, 40, 39, 33, 45, 32, 23)
pop_4000_neutral_nonsyn_100 = c(96, 63, 51, 41, 39, 41, 35, 16)
pop_4000_neutral_nonsyn_150 = c(109, 56, 41, 41, 43, 39, 35, 16)
pop_4000_neutral_nonsyn_200 = c(80, 63, 53, 44, 39, 25, 33, 18)
pop_4000_neutral_nonsyn_250 = c(96, 55, 46, 48, 34, 40, 37, 18)
pop_4000_neutral_nonsyn_300 = c(77, 53, 59, 41, 39, 30, 45, 11)
pop_4000_neutral_nonsyn_350 = c(73, 50, 50, 50, 44, 33, 35, 21)
pop_4000_neutral_nonsyn_400 = c(73, 68, 41, 49, 47, 36, 30, 13)

pop_4000_neutral_syn_0 = c(60, 22, 25, 26, 30, 11, 13, 7)
pop_4000_neutral_syn_50 = c(49, 20, 28, 20, 17, 14, 19, 6)
pop_4000_neutral_syn_100 = c(53, 28, 21, 18, 17, 20, 16, 5)
pop_4000_neutral_syn_150 = c(52, 33, 21, 23, 13, 19, 19, 9)
pop_4000_neutral_syn_200 = c(53, 35, 21, 17, 21, 10, 9, 9)
pop_4000_neutral_syn_250 = c(42, 34, 26, 21, 16, 13, 17, 4)
pop_4000_neutral_syn_300 = c(43, 38, 19, 15, 14, 14, 15, 7)
pop_4000_neutral_syn_350 = c(40, 28, 21, 23, 12, 22, 10, 4)
pop_4000_neutral_syn_400 = c(36, 29, 20, 18, 18, 14, 8, 8)

pop_4000_neutral_shift_nonsyn_0 = c(56, 30, 25, 20, 13, 20, 15, 5)
pop_4000_neutral_shift_nonsyn_50 = c(47, 35, 32, 17, 17, 12, 24, 4)
pop_4000_neutral_shift_nonsyn_100 = c(58, 26, 20, 25, 18, 20, 13, 10)
pop_4000_neutral_shift_nonsyn_150 = c(57, 31, 26, 21, 10, 18, 19, 6)
pop_4000_neutral_shift_nonsyn_200 = c(49, 36, 23, 20, 17, 11, 14, 4)
pop_4000_neutral_shift_nonsyn_250 = c(30, 33, 18, 26, 19, 14, 14, 10)
pop_4000_neutral_shift_nonsyn_300 = c(46, 23, 16, 20, 17, 19, 17, 9)
pop_4000_neutral_shift_nonsyn_350 = c(45, 23, 22, 18, 30, 7, 18, 10)
pop_4000_neutral_shift_nonsyn_400 = c(52, 21, 22, 18, 23, 15, 15, 10)

pop_4000_working_neutral_shift_nonsyn_0 = c(56, 30, 25, 20, 13, 20, 15, 5)
pop_4000_working_neutral_shift_nonsyn_50 = c(50, 38, 24, 12, 24, 15, 14, 7)
pop_4000_working_neutral_shift_nonsyn_100 = c(68, 29, 15, 21, 17, 16, 21, 5)
pop_4000_working_neutral_shift_nonsyn_150 = c(63, 29, 21, 20, 18, 19, 18, 5)
pop_4000_working_neutral_shift_nonsyn_200 = c(60, 30, 19, 18, 20, 18, 14, 10)
pop_4000_working_neutral_shift_nonsyn_250 = c(32, 35, 28, 23, 22, 10, 18, 5)
pop_4000_working_neutral_shift_nonsyn_300 = c(45, 28, 23, 14, 13, 24, 23, 7)
pop_4000_working_neutral_shift_nonsyn_350 = c(48, 23, 29, 23, 17, 22, 11, 8)
pop_4000_working_neutral_shift_nonsyn_400 = c(56, 24, 19, 16, 21, 16, 19, 10)

pop_4000_no_demo_nonsyn_0 = c(56, 30, 25, 20, 13, 20, 15, 5)
pop_4000_no_demo_nonsyn_50 = c(49, 35, 22, 22, 13, 14, 17, 6)
pop_4000_no_demo_nonsyn_100 = c(60, 32, 20, 15, 18, 17, 13, 9)
pop_4000_no_demo_nonsyn_150 = c(67, 39, 12, 23, 28, 11, 10, 6)
pop_4000_no_demo_nonsyn_200 = c(63, 30, 21, 18, 17, 10, 12, 9)
pop_4000_no_demo_nonsyn_250 = c(69, 29, 20, 9, 20, 15, 10, 11)
pop_4000_no_demo_nonsyn_300 = c(68, 19, 32, 21, 14, 9, 16, 4)
pop_4000_no_demo_nonsyn_350 = c(56, 33, 24, 21, 13, 15, 17, 3)
pop_4000_no_demo_nonsyn_400 = c(69, 38, 18, 17, 15, 18, 16, 6)

pop_4000_recap_nonsyn_0 = c(56, 30, 25, 20, 13, 20, 15, 5)
pop_4000_recap_nonsyn_50 = c(54, 28, 27, 20, 21, 16, 11, 9)
pop_4000_recap_nonsyn_100 = c(50, 27, 25, 24, 16, 16, 10, 10)
pop_4000_recap_nonsyn_150 = c(51, 23, 32, 16, 23, 13, 12, 6)
pop_4000_recap_nonsyn_200 = c(47, 23, 19, 22, 18, 11, 17, 10)
pop_4000_recap_nonsyn_250 = c(50, 23, 19, 28, 16, 17, 14, 5)
pop_4000_recap_nonsyn_300 = c(34, 24, 22, 14, 13, 18, 19, 7)
pop_4000_recap_nonsyn_350 = c(35, 24, 23, 14, 15, 10, 22, 7)
pop_4000_recap_nonsyn_400 = c(43, 16, 14, 15, 19, 20, 20, 8)

pop_4000_AW_AW_nonsyn_0 = c(56, 30, 25, 20, 13, 20, 15, 5)
pop_4000_AW_AW_nonsyn_50 = c(54, 28, 27, 20, 21, 16, 11, 9)
pop_4000_AW_AW_nonsyn_100 = c(50, 27, 25, 24, 16, 16, 10, 10)
pop_4000_AW_AW_nonsyn_150 = c(51, 23, 32, 16, 23, 13, 12, 6)
pop_4000_AW_AW_nonsyn_200 = c(47, 23, 19, 22, 18, 11, 17, 10)
pop_4000_AW_AW_nonsyn_250 = c(50, 23, 19, 28, 16, 17, 14, 5)
pop_4000_AW_AW_nonsyn_300 = c(34, 24, 22, 14, 13, 18, 19, 7)
pop_4000_AW_AW_nonsyn_350 = c(35, 24, 23, 14, 15, 10, 22, 7)
pop_4000_AW_AW_nonsyn_400 = c(43, 16, 14, 15, 19, 20, 20, 8)

pop_4000_no_demo_shift_nonsyn_0 = c(56, 30, 25, 20, 13, 20, 15, 5)
pop_4000_no_demo_shift_nonsyn_50 = c(57, 32, 21, 23, 15, 11, 17, 9)
pop_4000_no_demo_shift_nonsyn_100 = c(69, 23, 31, 15, 20, 19, 5, 6)
pop_4000_no_demo_shift_nonsyn_150 = c(67, 32, 31, 16, 20, 12, 9, 10)
pop_4000_no_demo_shift_nonsyn_200 = c(69, 31, 24, 18, 15, 10, 15, 8)
pop_4000_no_demo_shift_nonsyn_250 = c(70, 32, 19, 20, 13, 14, 10, 7)
pop_4000_no_demo_shift_nonsyn_300 = c(75, 38, 14, 19, 14, 19, 7, 8)
pop_4000_no_demo_shift_nonsyn_350 = c(60, 32, 19, 16, 21, 19, 10, 7)
pop_4000_no_demo_shift_nonsyn_400 = c(71, 33, 22, 15, 18, 15, 12, 10)

pop_4000_no_demo_shift_syn_0 = c(57, 31, 19, 19, 9, 14, 11, 5)
pop_4000_no_demo_shift_syn_50 = c(51, 35, 19, 14, 15, 13, 10, 7)
pop_4000_no_demo_shift_syn_100 = c(44, 28, 23, 20, 12, 16, 13, 3)
pop_4000_no_demo_shift_syn_150 = c(64, 27, 18, 17, 9, 12, 15, 5)
pop_4000_no_demo_shift_syn_200 = c(68, 35, 18, 16, 13, 12, 9, 6)
pop_4000_no_demo_shift_syn_250 = c(53, 37, 21, 21, 11, 11, 9, 6)
pop_4000_no_demo_shift_syn_300 = c(49, 35, 26, 15, 16, 6, 8, 9)
pop_4000_no_demo_shift_syn_350 = c(54, 36, 16, 18, 12, 17, 8, 5)
pop_4000_no_demo_shift_syn_400 = c(58, 32, 18, 15, 14, 13, 12, 7)

pop_4000_no_demo_no_shift_nonsyn_0 = c(56, 30, 25, 20, 13, 20, 15, 5)
pop_4000_no_demo_no_shift_nonsyn_50 = c(49, 35, 22, 22, 13, 14, 17, 6)
pop_4000_no_demo_no_shift_nonsyn_100 = c(60, 32, 20, 15, 18, 17, 13, 9)
pop_4000_no_demo_no_shift_nonsyn_150 = c(67, 39, 12, 23, 28, 11, 10, 6)
pop_4000_no_demo_no_shift_nonsyn_200 = c(63, 30, 21, 18, 17, 10, 12, 9)
pop_4000_no_demo_no_shift_nonsyn_250 = c(69, 29, 20, 9, 20, 15, 10, 11)
pop_4000_no_demo_no_shift_nonsyn_300 = c(68, 19, 32, 21, 14, 9, 16, 4)
pop_4000_no_demo_no_shift_nonsyn_350 = c(56, 33, 24, 21, 13, 15, 17, 3)
pop_4000_no_demo_no_shift_nonsyn_400 = c(69, 38, 18, 17, 15, 18, 16, 6)

full_no_demo_nonsyn_0 = c(1420, 233, 47, 12, 1, 0, 1, 0) * 2
full_no_demo_nonsyn_50 = c(1466, 194, 39, 15, 3, 0, 0, 0) * 2 
full_no_demo_nonsyn_100 = c(1455, 174, 50, 8, 2, 0, 0, 0) * 2
full_no_demo_nonsyn_150 = c(1436, 241, 54, 8, 3, 0, 0, 0) * 2
full_no_demo_nonsyn_200 = c(1463, 207, 44, 16, 3, 2, 0, 0) * 2

full_no_demo_syn_0 = c(1639, 295, 70, 8, 4, 1, 2, 0) * 2
full_no_demo_syn_50 = c(1586, 286, 66, 7, 2, 0, 0, 0) * 2
full_no_demo_syn_100 = c(1668, 258, 68, 11, 0, 0, 0, 0) * 2
full_no_demo_syn_150 = c(1599, 284, 66, 12, 4, 0, 0, 0) * 2
full_no_demo_syn_200 = c(1699, 249, 65, 15, 6, 2, 0, 0) * 2

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

x_axis = 1:8

df = data.frame(AW_time_neutral_syn_0,
                AW_time_neutral_syn_100,
                AW_time_neutral_syn_500,
                AW_time_neutral_syn_1000)

p_df <- ggplot(data=df, aes(x=x_axis, y=AW_time_neutral_syn_0, color='AW_time_neutral_syn_0')) +
  geom_point(shape=1) +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=AW_time_neutral_syn_100, color='AW_time_neutral_syn_100')) +
  geom_line(aes(x=x_axis, y=AW_time_neutral_syn_100, color='AW_time_neutral_syn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=AW_time_neutral_syn_500, color='AW_time_neutral_syn_500')) +
  geom_line(aes(x=x_axis, y=AW_time_neutral_syn_500, color='AW_time_neutral_syn_500')) +
  geom_point(shape=1, aes(x=x_axis, y=AW_time_neutral_syn_1000, color='AW_time_neutral_syn_1000')) +
  geom_line(aes(x=x_axis, y=AW_time_neutral_syn_1000, color='AW_time_neutral_syn_1000')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('blue', 'orange', 'red', 'green'),
                     name='Data Type',
                     breaks=c('AW_time_neutral_syn_0',
                              'AW_time_neutral_syn_100',
                              'AW_time_neutral_syn_500',
                              'AW_time_neutral_syn_1000'),
                     labels=c('AW_time_neutral_syn_0',
                              'AW_time_neutral_syn_100',
                              'AW_time_neutral_syn_500',
                              'AW_time_neutral_syn_1000')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Shift to neutral, synonymous SFS')

p_df

df = data.frame(AW_time_neutral_nonsyn_0,
                AW_time_neutral_nonsyn_100,
                AW_time_neutral_nonsyn_500,
                AW_time_neutral_nonsyn_1000)

p_df <- ggplot(data=df, aes(x=x_axis, y=AW_time_neutral_nonsyn_0, color='AW_time_neutral_nonsyn_0')) +
  geom_point(shape=1) +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=AW_time_neutral_nonsyn_100, color='AW_time_neutral_nonsyn_100')) +
  geom_line(aes(x=x_axis, y=AW_time_neutral_nonsyn_100, color='AW_time_neutral_nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=AW_time_neutral_nonsyn_500, color='AW_time_neutral_nonsyn_500')) +
  geom_line(aes(x=x_axis, y=AW_time_neutral_nonsyn_500, color='AW_time_neutral_nonsyn_500')) +
  geom_point(shape=1, aes(x=x_axis, y=AW_time_neutral_nonsyn_1000, color='AW_time_neutral_nonsyn_1000')) +
  geom_line(aes(x=x_axis, y=AW_time_neutral_nonsyn_1000, color='AW_time_neutral_nonsyn_1000')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('blue', 'orange', 'red', 'green'),
                     name='Data Type',
                     breaks=c('AW_time_neutral_nonsyn_0',
                              'AW_time_neutral_nonsyn_100',
                              'AW_time_neutral_nonsyn_500',
                              'AW_time_neutral_nonsyn_1000'),
                     labels=c('AW_time_neutral_nonsyn_0',
                              'AW_time_neutral_nonsyn_100',
                              'AW_time_neutral_nonsyn_500',
                              'AW_time_neutral_nonsyn_1000')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Shift to neutral, nonsynonymous SFS')

p_df

df = data.frame(AW_time_neutral_model_0,
                AW_time_neutral_model_100,
                AW_time_neutral_model_500,
                AW_time_neutral_model_1000)

p_df <- ggplot(data=df, aes(x=x_axis, y=AW_time_neutral_model_0, color='AW_time_neutral_model_0')) +
  geom_point(shape=1) +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=AW_time_neutral_model_100, color='AW_time_neutral_model_100')) +
  geom_line(aes(x=x_axis, y=AW_time_neutral_model_100, color='AW_time_neutral_model_100')) +
  geom_point(shape=1, aes(x=x_axis, y=AW_time_neutral_model_500, color='AW_time_neutral_model_500')) +
  geom_line(aes(x=x_axis, y=AW_time_neutral_model_500, color='AW_time_neutral_model_500')) +
  geom_point(shape=1, aes(x=x_axis, y=AW_time_neutral_model_1000, color='AW_time_neutral_model_1000')) +
  geom_line(aes(x=x_axis, y=AW_time_neutral_model_1000, color='AW_time_neutral_model_1000')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('blue', 'orange', 'red', 'green'),
                     name='Data Type',
                     breaks=c('AW_time_neutral_model_0',
                              'AW_time_neutral_model_100',
                              'AW_time_neutral_model_500',
                              'AW_time_neutral_model_1000'),
                     labels=c('AW_time_neutral_model_0',
                              'AW_time_neutral_model_100',
                              'AW_time_neutral_model_500',
                              'AW_time_neutral_model_1000')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Shift to neutral, model SFS')

p_df

plot_sfs_comparison(AW_time_neutral_syn_0, AW_time_neutral_nonsyn_0, AW_time_neutral_model_0) + ggtitle('Generation 0 sfs comparison')
plot_sfs_comparison(AW_time_neutral_syn_100, AW_time_neutral_nonsyn_100, AW_time_neutral_model_100) + ggtitle('Generation 100 sfs comparison')
plot_sfs_comparison(AW_time_neutral_syn_500, AW_time_neutral_nonsyn_500, AW_time_neutral_model_500) + ggtitle('Generation 500 sfs comparison')
plot_sfs_comparison(AW_time_neutral_syn_1000, AW_time_neutral_nonsyn_1000, AW_time_neutral_model_1000) + ggtitle('Generation 1000 sfs comparison')


df = data.frame(recap_1_gamma_sfs, seed_1_gamma_sfs,
                recap_2_gamma_sfs, seed_2_gamma_sfs,
                recap_3_gamma_sfs, seed_3_gamma_sfs,
                recap_4_gamma_sfs, seed_4_gamma_sfs,
                recap_5_gamma_sfs, seed_5_gamma_sfs,
                x_axis = x_axis)
p_df <- ggplot(data=df, aes(x=x_axis, y=recap_1_gamma_sfs, color='recap_1_gamma_sfs')) +
  geom_point(shape=1) +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=recap_2_gamma_sfs, color='recap_2_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=recap_2_gamma_sfs, color='recap_2_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=recap_3_gamma_sfs, color='recap_3_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=recap_3_gamma_sfs, color='recap_3_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=recap_4_gamma_sfs, color='recap_4_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=recap_4_gamma_sfs, color='recap_4_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=recap_5_gamma_sfs, color='recap_5_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=recap_5_gamma_sfs, color='recap_5_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=seed_1_gamma_sfs, color='seed_1_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=seed_1_gamma_sfs, color='seed_1_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=seed_2_gamma_sfs, color='seed_2_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=seed_2_gamma_sfs, color='seed_2_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=seed_3_gamma_sfs, color='seed_3_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=seed_3_gamma_sfs, color='seed_3_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=seed_4_gamma_sfs, color='seed_4_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=seed_4_gamma_sfs, color='seed_4_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=seed_5_gamma_sfs, color='seed_5_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=seed_5_gamma_sfs, color='seed_5_gamma_sfs')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c("#999999", "#999999", "#999999", "#999999", "#999999", "red", "red", "red", "red", 'red'),
                     name='Data Type',
                     breaks=c('recap_1_gamma_sfs', 'recap_2_gamma_sfs', 
                              'recap_3_gamma_sfs', 'recap_4_gamma_sfs', 
                              'recap_5_gamma_sfs', 'seed_1_gamma_sfs',
                              'seed_2_gamma_sfs', 'seed_3_gamma_sfs',
                              'seed_4_gamma_sfs', 'seed_5_gamma_sfs'),
                     labels=c('recap_1_gamma_sfs', 'recap_2_gamma_sfs', 
                              'recap_3_gamma_sfs', 'recap_4_gamma_sfs', 
                              'recap_5_gamma_sfs', 'seed_1_gamma_sfs',
                              'seed_2_gamma_sfs', 'seed_3_gamma_sfs',
                              'seed_4_gamma_sfs', 'seed_5_gamma_sfs')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Recap vs Shifted Count gamma SFS')

p_df


df = data.frame(recap_1_gamma_sfs / sum(recap_1_gamma_sfs), seed_1_gamma_sfs / sum(seed_1_gamma_sfs),
                recap_2_gamma_sfs / sum(recap_2_gamma_sfs), seed_2_gamma_sfs / sum(seed_2_gamma_sfs),
                recap_3_gamma_sfs / sum(recap_3_gamma_sfs), seed_3_gamma_sfs / sum(seed_3_gamma_sfs),
                recap_4_gamma_sfs / sum(recap_4_gamma_sfs), seed_4_gamma_sfs / sum(seed_4_gamma_sfs),
                recap_5_gamma_sfs / sum(recap_5_gamma_sfs), seed_5_gamma_sfs / sum(seed_5_gamma_sfs),
                x_axis = x_axis)
count_to_proportional = function(sfs) {
  return(sfs / sum(sfs))
}

p_df <- ggplot(data=df, aes(x=x_axis, y=count_to_proportional(recap_1_gamma_sfs), color='recap_1_gamma_sfs')) +
  geom_point(shape=1) +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_2_gamma_sfs), color='recap_2_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_2_gamma_sfs), color='recap_2_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_3_gamma_sfs), color='recap_3_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_3_gamma_sfs), color='recap_3_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_4_gamma_sfs), color='recap_4_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_4_gamma_sfs), color='recap_4_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_5_gamma_sfs), color='recap_5_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_5_gamma_sfs), color='recap_5_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(seed_1_gamma_sfs), color='seed_1_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(seed_1_gamma_sfs), color='seed_1_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(seed_2_gamma_sfs), color='seed_2_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(seed_2_gamma_sfs), color='seed_2_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(seed_3_gamma_sfs), color='seed_3_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(seed_3_gamma_sfs), color='seed_3_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(seed_4_gamma_sfs), color='seed_4_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(seed_4_gamma_sfs), color='seed_4_gamma_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(seed_5_gamma_sfs), color='seed_5_gamma_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(seed_5_gamma_sfs), color='seed_5_gamma_sfs')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Proportion of SNPs') +
  scale_color_manual(values=c("#999999", "#999999", "#999999", "#999999", "#999999", "red", "red", "red", "red", 'red'),
                     name='Data Type',
                     breaks=c('recap_1_gamma_sfs', 'recap_2_gamma_sfs', 
                              'recap_3_gamma_sfs', 'recap_4_gamma_sfs', 
                              'recap_5_gamma_sfs', 'seed_1_gamma_sfs',
                              'seed_2_gamma_sfs', 'seed_3_gamma_sfs',
                              'seed_4_gamma_sfs', 'seed_5_gamma_sfs'),
                     labels=c('recap_1_gamma_sfs', 'recap_2_gamma_sfs', 
                              'recap_3_gamma_sfs', 'recap_4_gamma_sfs', 
                              'recap_5_gamma_sfs', 'seed_1_gamma_sfs',
                              'seed_2_gamma_sfs', 'seed_3_gamma_sfs',
                              'seed_4_gamma_sfs', 'seed_5_gamma_sfs')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Recap vs Shifted proportional gamma SFS')

p_df

x_axis = 1:8

df = data.frame(recap_1_nonsyn_sfs, empirical_nonsyn_sfs_1,
                recap_2_nonsyn_sfs, empirical_nonsyn_sfs_2,
                recap_3_nonsyn_sfs, empirical_nonsyn_sfs_3,
                recap_4_nonsyn_sfs, empirical_nonsyn_sfs_4,
                recap_5_nonsyn_sfs, empirical_nonsyn_sfs_5,
                x_axis = x_axis)
p_df <- ggplot(data=df, aes(x=x_axis, y=recap_1_nonsyn_sfs, color='recap_1_nonsyn_sfs')) +
  geom_point(shape=1) +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=recap_2_nonsyn_sfs, color='recap_2_nonsyn_sfs')) +
  geom_line(aes(x=x_axis, y=recap_2_nonsyn_sfs, color='recap_2_nonsyn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=recap_3_nonsyn_sfs, color='recap_3_nonsyn_sfs')) +
  geom_line(aes(x=x_axis, y=recap_3_nonsyn_sfs, color='recap_3_nonsyn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=recap_4_nonsyn_sfs, color='recap_4_nonsyn_sfs')) +
  geom_line(aes(x=x_axis, y=recap_4_nonsyn_sfs, color='recap_4_nonsyn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=recap_5_nonsyn_sfs, color='recap_5_nonsyn_sfs')) +
  geom_line(aes(x=x_axis, y=recap_5_nonsyn_sfs, color='recap_5_nonsyn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=empirical_nonsyn_sfs_1, color='empirical_nonsyn_sfs_1')) +
  geom_line(aes(x=x_axis, y=empirical_nonsyn_sfs_1, color='empirical_nonsyn_sfs_1')) +
  geom_point(shape=1, aes(x=x_axis, y=empirical_nonsyn_sfs_2, color='empirical_nonsyn_sfs_2')) +
  geom_line(aes(x=x_axis, y=empirical_nonsyn_sfs_2, color='empirical_nonsyn_sfs_2')) +
  geom_point(shape=1, aes(x=x_axis, y=empirical_nonsyn_sfs_3, color='empirical_nonsyn_sfs_3')) +
  geom_line(aes(x=x_axis, y=empirical_nonsyn_sfs_3, color='empirical_nonsyn_sfs_3')) +
  geom_point(shape=1, aes(x=x_axis, y=empirical_nonsyn_sfs_4, color='empirical_nonsyn_sfs_4')) +
  geom_line(aes(x=x_axis, y=empirical_nonsyn_sfs_4, color='empirical_nonsyn_sfs_4')) +
  geom_point(shape=1, aes(x=x_axis, y=empirical_nonsyn_sfs_5, color='empirical_nonsyn_sfs_5')) +
  geom_line(aes(x=x_axis, y=empirical_nonsyn_sfs_5, color='empirical_nonsyn_sfs_5')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c("red", "red", "red", "red", 'red', "#999999", "#999999", "#999999", "#999999", "#999999"),
                     name='Data Type',
                     breaks=c('recap_1_nonsyn_sfs', 'recap_2_nonsyn_sfs', 
                              'recap_3_nonsyn_sfs', 'recap_4_nonsyn_sfs', 
                              'recap_5_nonsyn_sfs', 'empirical_nonsyn_sfs_1',
                              'empirical_nonsyn_sfs_2', 'empirical_nonsyn_sfs_3',
                              'empirical_nonsyn_sfs_4', 'empirical_nonsyn_sfs_5'),
                     labels=c('recap_1_nonsyn_sfs', 'recap_2_nonsyn_sfs', 
                              'recap_3_nonsyn_sfs', 'recap_4_nonsyn_sfs', 
                              'recap_5_nonsyn_sfs', 'empirical_nonsyn_sfs_1',
                              'empirical_nonsyn_sfs_2', 'empirical_nonsyn_sfs_3',
                              'empirical_nonsyn_sfs_4', 'empirical_nonsyn_sfs_5')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Recap vs Shifted Count Nonsynonymous SFS')

p_df

p_df <- ggplot(data=df, aes(x=x_axis, y=count_to_proportional(recap_1_nonsyn_sfs), color='recap_1_nonsyn_sfs')) +
  geom_point(shape=1) +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_2_nonsyn_sfs), color='recap_2_nonsyn_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_2_nonsyn_sfs), color='recap_2_nonsyn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_3_nonsyn_sfs), color='recap_3_nonsyn_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_3_nonsyn_sfs), color='recap_3_nonsyn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_4_nonsyn_sfs), color='recap_4_nonsyn_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_4_nonsyn_sfs), color='recap_4_nonsyn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_5_nonsyn_sfs), color='recap_5_nonsyn_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_5_nonsyn_sfs), color='recap_5_nonsyn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(empirical_nonsyn_sfs_1), color='empirical_nonsyn_sfs_1')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(empirical_nonsyn_sfs_1), color='empirical_nonsyn_sfs_1')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(empirical_nonsyn_sfs_2), color='empirical_nonsyn_sfs_2')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(empirical_nonsyn_sfs_2), color='empirical_nonsyn_sfs_2')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(empirical_nonsyn_sfs_3), color='empirical_nonsyn_sfs_3')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(empirical_nonsyn_sfs_3), color='empirical_nonsyn_sfs_3')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(empirical_nonsyn_sfs_4), color='empirical_nonsyn_sfs_4')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(empirical_nonsyn_sfs_4), color='empirical_nonsyn_sfs_4')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(empirical_nonsyn_sfs_5), color='empirical_nonsyn_sfs_5')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(empirical_nonsyn_sfs_5), color='empirical_nonsyn_sfs_5')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c("red", "red", "red", "red", 'red', "#999999", "#999999", "#999999", "#999999", "#999999"),
                     name='Data Type',
                     breaks=c('recap_1_nonsyn_sfs', 'recap_2_nonsyn_sfs', 
                              'recap_3_nonsyn_sfs', 'recap_4_nonsyn_sfs', 
                              'recap_5_nonsyn_sfs', 'empirical_nonsyn_sfs_1',
                              'empirical_nonsyn_sfs_2', 'empirical_nonsyn_sfs_3',
                              'empirical_nonsyn_sfs_4', 'empirical_nonsyn_sfs_5'),
                     labels=c('recap_1_nonsyn_sfs', 'recap_2_nonsyn_sfs', 
                              'recap_3_nonsyn_sfs', 'recap_4_nonsyn_sfs', 
                              'recap_5_nonsyn_sfs', 'empirical_nonsyn_sfs_1',
                              'empirical_nonsyn_sfs_2', 'empirical_nonsyn_sfs_3',
                              'empirical_nonsyn_sfs_4', 'empirical_nonsyn_sfs_5')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Recap vs Shifted Proportional Nonsynonymous SFS')

p_df

df = data.frame(recap_1_syn_sfs, empirical_syn_sfs_1,
                recap_2_syn_sfs, empirical_syn_sfs_2,
                recap_3_syn_sfs, empirical_syn_sfs_3,
                recap_4_syn_sfs, empirical_syn_sfs_4,
                recap_5_syn_sfs, empirical_syn_sfs_5,
                x_axis = x_axis)
p_df <- ggplot(data=df, aes(x=x_axis, y=recap_1_syn_sfs, color='recap_1_syn_sfs')) +
  geom_point(shape=1) +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=recap_2_syn_sfs, color='recap_2_syn_sfs')) +
  geom_line(aes(x=x_axis, y=recap_2_syn_sfs, color='recap_2_syn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=recap_3_syn_sfs, color='recap_3_syn_sfs')) +
  geom_line(aes(x=x_axis, y=recap_3_syn_sfs, color='recap_3_syn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=recap_4_syn_sfs, color='recap_4_syn_sfs')) +
  geom_line(aes(x=x_axis, y=recap_4_syn_sfs, color='recap_4_syn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=recap_5_syn_sfs, color='recap_5_syn_sfs')) +
  geom_line(aes(x=x_axis, y=recap_5_syn_sfs, color='recap_5_syn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=empirical_syn_sfs_1, color='empirical_syn_sfs_1')) +
  geom_line(aes(x=x_axis, y=empirical_syn_sfs_1, color='empirical_syn_sfs_1')) +
  geom_point(shape=1, aes(x=x_axis, y=empirical_syn_sfs_2, color='empirical_syn_sfs_2')) +
  geom_line(aes(x=x_axis, y=empirical_syn_sfs_2, color='empirical_syn_sfs_2')) +
  geom_point(shape=1, aes(x=x_axis, y=empirical_syn_sfs_3, color='empirical_syn_sfs_3')) +
  geom_line(aes(x=x_axis, y=empirical_syn_sfs_3, color='empirical_syn_sfs_3')) +
  geom_point(shape=1, aes(x=x_axis, y=empirical_syn_sfs_4, color='empirical_syn_sfs_4')) +
  geom_line(aes(x=x_axis, y=empirical_syn_sfs_4, color='empirical_syn_sfs_4')) +
  geom_point(shape=1, aes(x=x_axis, y=empirical_syn_sfs_5, color='empirical_syn_sfs_5')) +
  geom_line(aes(x=x_axis, y=empirical_syn_sfs_5, color='empirical_syn_sfs_5')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c("red", "red", "red", "red", 'red', "#999999", "#999999", "#999999", "#999999", "#999999"),
                     name='Data Type',
                     breaks=c('recap_1_syn_sfs', 'recap_2_syn_sfs', 
                              'recap_3_syn_sfs', 'recap_4_syn_sfs', 
                              'recap_5_syn_sfs', 'empirical_syn_sfs_1',
                              'empirical_syn_sfs_2', 'empirical_syn_sfs_3',
                              'empirical_syn_sfs_4', 'empirical_syn_sfs_5'),
                     labels=c('recap_1_syn_sfs', 'recap_2_syn_sfs', 
                              'recap_3_syn_sfs', 'recap_4_syn_sfs', 
                              'recap_5_syn_sfs', 'empirical_syn_sfs_1',
                              'empirical_syn_sfs_2', 'empirical_syn_sfs_3',
                              'empirical_syn_sfs_4', 'empirical_syn_sfs_5')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Recap vs Shifted Count Synonymous SFS')

p_df

p_df <- ggplot(data=df, aes(x=x_axis, y=count_to_proportional(recap_1_syn_sfs), color='recap_1_syn_sfs')) +
  geom_point(shape=1) +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_2_syn_sfs), color='recap_2_syn_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_2_syn_sfs), color='recap_2_syn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_3_syn_sfs), color='recap_3_syn_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_3_syn_sfs), color='recap_3_syn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_4_syn_sfs), color='recap_4_syn_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_4_syn_sfs), color='recap_4_syn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(recap_5_syn_sfs), color='recap_5_syn_sfs')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(recap_5_syn_sfs), color='recap_5_syn_sfs')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(empirical_syn_sfs_1), color='empirical_syn_sfs_1')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(empirical_syn_sfs_1), color='empirical_syn_sfs_1')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(empirical_syn_sfs_2), color='empirical_syn_sfs_2')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(empirical_syn_sfs_2), color='empirical_syn_sfs_2')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(empirical_syn_sfs_3), color='empirical_syn_sfs_3')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(empirical_syn_sfs_3), color='empirical_syn_sfs_3')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(empirical_syn_sfs_4), color='empirical_syn_sfs_4')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(empirical_syn_sfs_4), color='empirical_syn_sfs_4')) +
  geom_point(shape=1, aes(x=x_axis, y=count_to_proportional(empirical_syn_sfs_5), color='empirical_syn_sfs_5')) +
  geom_line(aes(x=x_axis, y=count_to_proportional(empirical_syn_sfs_5), color='empirical_syn_sfs_5')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c("red", "red", "red", "red", 'red', "#999999", "#999999", "#999999", "#999999", "#999999"),
                     name='Data Type',
                     breaks=c('recap_1_syn_sfs', 'recap_2_syn_sfs', 
                              'recap_3_syn_sfs', 'recap_4_syn_sfs', 
                              'recap_5_syn_sfs', 'empirical_syn_sfs_1',
                              'empirical_syn_sfs_2', 'empirical_syn_sfs_3',
                              'empirical_syn_sfs_4', 'empirical_syn_sfs_5'),
                     labels=c('recap_1_syn_sfs', 'recap_2_syn_sfs', 
                              'recap_3_syn_sfs', 'recap_4_syn_sfs', 
                              'recap_5_syn_sfs', 'empirical_syn_sfs_1',
                              'empirical_syn_sfs_2', 'empirical_syn_sfs_3',
                              'empirical_syn_sfs_4', 'empirical_syn_sfs_5')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Recap vs Shifted Proportional Synonymous SFS')

p_df


plot_sfs_comparison <- function(gamma_sfs, neugamma_sfs, empirical_sfs) {
  # It is assumed that the given sfs is folded, and describes 16 individuals.
  x_axis = 1:8
  # gamma_sfs = gamma_sfs / sum(gamma_sfs)
  # neugamma_sfs = neugamma_sfs / sum(neugamma_sfs)
  # empirical_sfs = empirical_sfs / sum(empirical_sfs)
  df = data.frame(gamma_sfs = gamma_sfs,
                  neugamma_sfs = neugamma_sfs,
                  empirical_sfs = empirical_sfs,
                  x_axis = x_axis)
  p_df <- ggplot(data=df, aes(x=x_axis, y=gamma_sfs, color='syn_sfs')) +
    geom_point() +
    geom_line() +
    geom_point(aes(x=x_axis, y=neugamma_sfs, color='nonsyn_sfs')) +
    geom_line(aes(x=x_axis, y=neugamma_sfs, color='nonsyn_sfs')) +
    geom_point(aes(x=x_axis, y=empirical_sfs, color='model_sfs')) +
    geom_line(aes(x=x_axis, y=empirical_sfs, color='model_sfs')) +
    scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
    scale_y_continuous(name='Proportion of SNps') +
    scale_color_manual(values=c('#FF6347', '#9400D3', '#009E73'),
                       name='Data Type',
                       breaks=c('syn_sfs', 'nonsyn_sfs', 'model_sfs'),
                       labels=c('syn_sfs', 'nonsyn_sfs', 'model_sfs')) +
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
AW_time_neutral_0_gamma = rgamma(10000, shape=0.13613819, scale=0.27895706)
AW_time_neutral_100_gamma = rgamma(10000, shape=0.12631414, scale=0.51913395)
AW_time_neutral_500_gamma = rgamma(10000, shape=0.14589274, scale=0.17883975)
AW_time_neutral_1000_gamma = rgamma(10000, shape=0.09385309, scale=2.86116584)

AW_time_neutral_0_gamma = replace(AW_time_neutral_0_gamma, AW_time_neutral_0_gamma > 1, 1)
AW_time_neutral_100_gamma = replace(AW_time_neutral_100_gamma, AW_time_neutral_100_gamma > 1, 1)
AW_time_neutral_500_gamma = replace(AW_time_neutral_500_gamma, AW_time_neutral_500_gamma > 1, 1)
AW_time_neutral_1000_gamma = replace(AW_time_neutral_1000_gamma, AW_time_neutral_1000_gamma > 1, 1)

bar_AW_time_neutral_0_gamma = compute_bar(AW_time_neutral_0_gamma)
bar_AW_time_neutral_100_gamma = compute_bar(AW_time_neutral_100_gamma)
bar_AW_time_neutral_500_gamma = compute_bar(AW_time_neutral_500_gamma)
bar_AW_time_neutral_1000_gamma = compute_bar(AW_time_neutral_1000_gamma)

TAB_AW_time_neutral_gamma <- rbind(bar_AW_time_neutral_0_gamma,
                                   bar_AW_time_neutral_100_gamma,
                                   bar_AW_time_neutral_500_gamma,
                                   bar_AW_time_neutral_1000_gamma) 

barplot(TAB_AW_time_neutral_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "dodgerblue4"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="Gamma distributed DFE over time (shift to neutral)")
legend("top", inset=.02, c('0 Generations', '100 generations', '500 generations', '1000 generations'), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "dodgerblue4"), 
       horiz=FALSE, cex=1)

recap_gamma_1 <- replace(recap_gamma_1, recap_gamma_1 > 1, 1)
bar_recap_gamma_1 <- compute_bar(recap_gamma_1)

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

recap_gamma_1 <- rgamma(100000, shape = 0.10166433, scale = 3.65199084)
recap_gamma_1 <- replace(recap_gamma_1, recap_gamma_1 > 1, 1)
bar_recap_gamma_1 <- compute_bar(recap_gamma_1)

recap_gamma_2 <- rgamma(100000, shape = 0.09999237, scale = 4.84024034)
recap_gamma_2 <- replace(recap_gamma_2, recap_gamma_2 > 1, 1)
bar_recap_gamma_2 <- compute_bar(recap_gamma_2)

recap_gamma_3 <- rgamma(100000, shape = 0.09876697, scale = 4.65686381)
recap_gamma_3 <- replace(recap_gamma_3, recap_gamma_3 > 1, 1)
bar_recap_gamma_3 <- compute_bar(recap_gamma_3)

recap_gamma_4 <- rgamma(100000, shape = 0.10046261, scale = 4.71949352)
recap_gamma_4 <- replace(recap_gamma_4, recap_gamma_4 > 1, 1)
bar_recap_gamma_4 <- compute_bar(recap_gamma_4)

recap_gamma_5 <- rgamma(100000, shape = 0.10225009, scale =  2.77497495)
recap_gamma_5 <- replace(recap_gamma_5, recap_gamma_5 > 1, 1)
bar_recap_gamma_5 <- compute_bar(recap_gamma_5)


TAB_recap_gamma <- rbind(ancestral_bar, bar_recap_gamma_1, bar_recap_gamma_2, bar_recap_gamma_3, bar_recap_gamma_4, bar_recap_gamma_5) 

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="(Recapitulated) Gamma distributed DFE")
legend("top", inset=.02, c("Ancestral", "Seed 1", "Seed 2", "Seed 3", "Seed 4", "Seed 5"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
       horiz=FALSE, cex=1)

recap_neugamma_1 <- rgamma(10000, shape = 0.18405779, scale =  0.31091049)
recap_neugamma_1 <- sort(recap_neugamma_1)
recap_neugamma_1 <- replace(recap_neugamma_1, recap_neugamma_1 > 1, 1)
recap_neugamma_1 <- c(recap_neugamma_1[1:1424] * 0 + 0.000000001, recap_neugamma_1[1425:10000])
bar_recap_neugamma_1 <- compute_bar(recap_neugamma_1)

recap_neugamma_2 <- rgamma(10000, shape = 0.18167239, scale = 0.46937791)
recap_neugamma_2 <- sort(recap_neugamma_2)
recap_neugamma_2 <- replace(recap_neugamma_2, recap_neugamma_2 > 1, 1)
recap_neugamma_2 <- c(recap_neugamma_2[1:1478] * 0 + 0.000000001, recap_neugamma_2[1479:10000])
bar_recap_neugamma_2 <- compute_bar(recap_neugamma_2)

recap_neugamma_3 <- rgamma(10000, shape = 0.15829279, scale = 0.6388670)
recap_neugamma_3 <- sort(recap_neugamma_3)
recap_neugamma_3 <- replace(recap_neugamma_3, recap_neugamma_3 > 1, 1)
recap_neugamma_3 <- c(recap_neugamma_3[1:1209] * 0 + 0.000000001, recap_neugamma_3[1210:10000])
bar_recap_neugamma_3 <- compute_bar(recap_neugamma_3)

recap_neugamma_4 <- rgamma(10000, shape = 0.17164891, scale = 1.0565724)
recap_neugamma_4 <- sort(recap_neugamma_4)
recap_neugamma_4 <- replace(recap_neugamma_4, recap_neugamma_4 > 1, 1)
recap_neugamma_4 <- c(recap_neugamma_4[1:1546] * 0 + 0.000000001, recap_neugamma_4[1547:10000])
bar_recap_neugamma_4 <- compute_bar(recap_neugamma_4)

recap_neugamma_5 <- rgamma(10000, shape = 0.20197546, scale = 0.16501615)
recap_neugamma_5 <- sort(recap_neugamma_5)
recap_neugamma_5 <- replace(recap_neugamma_5, recap_neugamma_5 > 1, 1)
recap_neugamma_5 <- c(recap_neugamma_5[1:1559] * 0 + 0.000000001, recap_neugamma_5[1600:10000])
bar_recap_neugamma_5 <- compute_bar(recap_neugamma_5)

TAB_recap_neugamma <- rbind(ancestral_bar, bar_recap_neugamma_1, bar_recap_neugamma_2, bar_recap_neugamma_3, bar_recap_neugamma_4, bar_recap_neugamma_5) 

barplot(TAB_recap_neugamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="(Recapitulated) Neutral-gamma distributed DFE")
legend("top", inset=.02, c("Ancestral", "Seed 1", "Seed 2", "Seed 3", "Seed 4", "Seed 5"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
       horiz=FALSE, cex=1)

bar_gamma_1 <- compute_bar(seed_1_gamma)
bar_gamma_2 <- compute_bar(seed_2_gamma)
bar_gamma_3 <- compute_bar(seed_3_gamma)
bar_gamma_4 <- compute_bar(seed_4_gamma)
bar_gamma_5 <- compute_bar(seed_5_gamma)

TAB_gamma <- rbind(ancestral_bar, bar_gamma_1, bar_gamma_2, bar_gamma_3, bar_gamma_4, bar_gamma_5) 

barplot(TAB_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="(Shift to neutral) Gamma distributed DFE")
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
        main="(Shift to neutral) Neutral-gamma distributed DFE")
legend("top", inset=.02, c("Ancestral", "Seed 1", "Seed 2", "Seed 3", "Seed 4", "Seed 5"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
       horiz=FALSE, cex=1)

# Gamma distributions of 0th gen
pop_4000_AW_AW_0_gamma = rgamma(10000, shape=8.70426901e-02, scale=5.78155986e+03)
pop_4000_neutral_0_gamma = rgamma(10000, shape=1.04124511e-03, scale=2.68516104e+02)
pop_4000_neutral_shift_0_gamma = rgamma(10000, shape=8.57675970e-02, scale=3.39075559e+03)
pop_4000_no_demo_0_gamma = rgamma(10000, shape=9.79405888e-02, scale=3.51131482e+03)
pop_4000_no_demo_shift_0_gamma = rgamma(10000, shape=9.91500302e-02, scale=2.80774613e+03)
pop_4000_no_demo_no_shift_0_gamma = rgamma(10000, shape=9.42719126e-02, scale=1.85529527e+03)
pop_4000_recap_0_gamma = rgamma(10000, shape=8.75532829e-02, scale=5.91419095e+03)

pop_4000_AW_AW_0_gamma = replace(pop_4000_AW_AW_0_gamma, pop_4000_AW_AW_0_gamma > 1, 1)
pop_4000_AW_AW_0_gamma_bar <- compute_bar(pop_4000_AW_AW_0_gamma)

pop_4000_neutral_0_gamma = replace(pop_4000_neutral_0_gamma, pop_4000_neutral_0_gamma > 1, 1)
pop_4000_neutral_0_gamma_bar = compute_bar(pop_4000_neutral_0_gamma)

pop_4000_neutral_shift_0_gamma = replace(pop_4000_neutral_shift_0_gamma, pop_4000_neutral_shift_0_gamma > 1, 1)
pop_4000_neutral_shift_0_gamma_bar = compute_bar(pop_4000_neutral_shift_0_gamma)

pop_4000_no_demo_0_gamma = replace(pop_4000_no_demo_0_gamma, pop_4000_no_demo_0_gamma > 1, 1)
pop_4000_no_demo_0_gamma_bar = compute_bar(pop_4000_no_demo_0_gamma)

pop_4000_no_demo_shift_0_gamma = replace(pop_4000_no_demo_shift_0_gamma, pop_4000_no_demo_shift_0_gamma > 1, 1)
pop_4000_no_demo_shift_0_gamma_bar = compute_bar(pop_4000_no_demo_shift_0_gamma)

pop_4000_no_demo_no_shift_0_gamma = replace(pop_4000_no_demo_no_shift_0_gamma, pop_4000_no_demo_no_shift_0_gamma > 1, 1)
pop_4000_no_demo_no_shift_0_gamma_bar = compute_bar(pop_4000_no_demo_no_shift_0_gamma)

pop_4000_recap_0_gamma = replace(pop_4000_recap_0_gamma, pop_4000_recap_0_gamma > 1, 1)
pop_4000_recap_0_gamma_bar = compute_bar(pop_4000_recap_0_gamma)

pop_4000_AW_AW_0_neugamma = replace(pop_4000_AW_AW_0_neugamma, pop_4000_AW_AW_0_neugamma > 1, 1)
pop_4000_neutral_0_neugamma = replace(pop_4000_neutral_0_neugamma, pop_4000_neutral_0_neugamma > 1, 1)
pop_4000_neutral_shift_0_neugamma = replace(pop_4000_neutral_shift_0_neugamma, pop_4000_neutral_shift_0_neugamma > 1, 1)
pop_4000_no_demo_0_neugamma = replace(pop_4000_no_demo_0_neugamma, pop_4000_no_demo_0_neugamma > 1, 1)
pop_4000_no_demo_shift_0_neugamma = replace(pop_4000_no_demo_shift_0_neugamma, pop_4000_no_demo_shift_0_neugamma > 1, 1)
pop_4000_no_demo_shift_0_neugamma = replace(pop_4000_no_demo_no_shift_0_neugamma, pop_4000_no_demo_no_shift_0_neugamma > 1, 1)
pop_4000_recap_0_neugamma = replace(pop_4000_recap_0_neugamma, pop_4000_recap_0_neugamma > 1, 1)

TAB_recap_gamma <- rbind(pop_4000_AW_AW_0_gamma_bar,
                         pop_4000_neutral_0_gamma_bar,
                         pop_4000_neutral_shift_0_gamma_bar,
                         pop_4000_no_demo_0_gamma_bar,
                         pop_4000_no_demo_shift_0_gamma_bar,
                         pop_4000_no_demo_no_shift_0_gamma_bar,
                         pop_4000_recap_0_gamma_bar)

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="0 generations after shift in DFE")
legend("top", inset=.02, c("AW_AW", "neutral", "neutral_shift", "no_demo", "no_demo_shift", "no_demo_no_shift", "recap"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
       horiz=FALSE, cex=1)

# Gamma distributions of 50th gen
pop_4000_AW_AW_50_gamma = rgamma(10000, shape=8.70426901e-02, scale=5.78155986e+03)
pop_4000_neutral_50_gamma = rgamma(10000, shape=1.04124511e-03, scale=2.68516104e+02)
pop_4000_neutral_shift_50_gamma = rgamma(10000, shape=8.57675970e-02, scale=3.39075559e+03)
pop_4000_no_demo_50_gamma = rgamma(10000, shape=9.79405888e-02, scale=3.51131482e+03)
pop_4000_no_demo_shift_50_gamma = rgamma(10000, shape=9.91500302e-02, scale=2.80774613e+03)
pop_4000_no_demo_no_shift_50_gamma = rgamma(10000, shape=9.42719126e-02, scale=1.85529527e+03)
pop_4000_recap_50_gamma = rgamma(10000, shape=8.75532829e-02, scale=5.91419095e+03)

pop_4000_AW_AW_50_gamma = replace(pop_4000_AW_AW_50_gamma, pop_4000_AW_AW_50_gamma > 1, 1)
pop_4000_AW_AW_50_gamma_bar <- compute_bar(pop_4000_AW_AW_50_gamma)

pop_4000_neutral_50_gamma = replace(pop_4000_neutral_50_gamma, pop_4000_neutral_50_gamma > 1, 1)
pop_4000_neutral_50_gamma_bar = compute_bar(pop_4000_neutral_50_gamma)

pop_4000_neutral_shift_50_gamma = replace(pop_4000_neutral_shift_50_gamma, pop_4000_neutral_shift_50_gamma > 1, 1)
pop_4000_neutral_shift_50_gamma_bar = compute_bar(pop_4000_neutral_shift_50_gamma)

pop_4000_no_demo_50_gamma = replace(pop_4000_no_demo_50_gamma, pop_4000_no_demo_50_gamma > 1, 1)
pop_4000_no_demo_50_gamma_bar = compute_bar(pop_4000_no_demo_50_gamma)

pop_4000_no_demo_shift_50_gamma = replace(pop_4000_no_demo_shift_50_gamma, pop_4000_no_demo_shift_50_gamma > 1, 1)
pop_4000_no_demo_shift_50_gamma_bar = compute_bar(pop_4000_no_demo_shift_50_gamma)

pop_4000_no_demo_no_shift_50_gamma = replace(pop_4000_no_demo_no_shift_50_gamma, pop_4000_no_demo_no_shift_50_gamma > 1, 1)
pop_4000_no_demo_no_shift_50_gamma_bar = compute_bar(pop_4000_no_demo_no_shift_50_gamma)

pop_4000_recap_50_gamma = replace(pop_4000_recap_50_gamma, pop_4000_recap_50_gamma > 1, 1)
pop_4000_recap_50_gamma_bar = compute_bar(pop_4000_recap_50_gamma)

pop_4000_AW_AW_50_neugamma = replace(pop_4000_AW_AW_50_neugamma, pop_4000_AW_AW_50_neugamma > 1, 1)
pop_4000_neutral_50_neugamma = replace(pop_4000_neutral_50_neugamma, pop_4000_neutral_50_neugamma > 1, 1)
pop_4000_neutral_shift_50_neugamma = replace(pop_4000_neutral_shift_50_neugamma, pop_4000_neutral_shift_50_neugamma > 1, 1)
pop_4000_no_demo_50_neugamma = replace(pop_4000_no_demo_50_neugamma, pop_4000_no_demo_50_neugamma > 1, 1)
pop_4000_no_demo_shift_50_neugamma = replace(pop_4000_no_demo_shift_50_neugamma, pop_4000_no_demo_shift_50_neugamma > 1, 1)
pop_4000_no_demo_shift_50_neugamma = replace(pop_4000_no_demo_no_shift_50_neugamma, pop_4000_no_demo_no_shift_50_neugamma > 1, 1)
pop_4000_recap_50_neugamma = replace(pop_4000_recap_50_neugamma, pop_4000_recap_50_neugamma > 1, 1)

TAB_recap_gamma <- rbind(pop_4000_AW_AW_50_gamma_bar,
                         pop_4000_neutral_50_gamma_bar,
                         pop_4000_neutral_shift_50_gamma_bar,
                         pop_4000_no_demo_50_gamma_bar,
                         pop_4000_no_demo_shift_50_gamma_bar,
                         pop_4000_no_demo_no_shift_50_gamma_bar,
                         pop_4000_recap_50_gamma_bar)

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="50 generations after shift in DFE")
legend("top", inset=.02, c("AW_AW", "neutral", "neutral_shift", "no_demo", "no_demo_shift", "no_demo_no_shift", "recap"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
       horiz=FALSE, cex=1)

# Gamma distributions of 100th gen
pop_4000_AW_AW_100_gamma = rgamma(10000, shape=8.70426901e-02, scale=5.78155986e+03)
pop_4000_neutral_100_gamma = rgamma(10000, shape=1.04124511e-03, scale=2.68516104e+02)
pop_4000_neutral_shift_100_gamma = rgamma(10000, shape=8.57675970e-02, scale=3.39075559e+03)
pop_4000_no_demo_100_gamma = rgamma(10000, shape=9.79405888e-02, scale=3.51131482e+03)
pop_4000_no_demo_shift_100_gamma = rgamma(10000, shape=9.91500302e-02, scale=2.80774613e+03)
pop_4000_no_demo_no_shift_100_gamma = rgamma(10000, shape=9.42719126e-02, scale=1.85529527e+03)
pop_4000_recap_100_gamma = rgamma(10000, shape=8.75532829e-02, scale=5.91419095e+03)

pop_4000_AW_AW_100_gamma = replace(pop_4000_AW_AW_100_gamma, pop_4000_AW_AW_100_gamma > 1, 1)
pop_4000_AW_AW_100_gamma_bar <- compute_bar(pop_4000_AW_AW_100_gamma)

pop_4000_neutral_100_gamma = replace(pop_4000_neutral_100_gamma, pop_4000_neutral_100_gamma > 1, 1)
pop_4000_neutral_100_gamma_bar = compute_bar(pop_4000_neutral_100_gamma)

pop_4000_neutral_shift_100_gamma = replace(pop_4000_neutral_shift_100_gamma, pop_4000_neutral_shift_100_gamma > 1, 1)
pop_4000_neutral_shift_100_gamma_bar = compute_bar(pop_4000_neutral_shift_100_gamma)

pop_4000_no_demo_100_gamma = replace(pop_4000_no_demo_100_gamma, pop_4000_no_demo_100_gamma > 1, 1)
pop_4000_no_demo_100_gamma_bar = compute_bar(pop_4000_no_demo_100_gamma)

pop_4000_no_demo_shift_100_gamma = replace(pop_4000_no_demo_shift_100_gamma, pop_4000_no_demo_shift_100_gamma > 1, 1)
pop_4000_no_demo_shift_100_gamma_bar = compute_bar(pop_4000_no_demo_shift_100_gamma)

pop_4000_no_demo_no_shift_100_gamma = replace(pop_4000_no_demo_no_shift_100_gamma, pop_4000_no_demo_no_shift_100_gamma > 1, 1)
pop_4000_no_demo_no_shift_100_gamma_bar = compute_bar(pop_4000_no_demo_no_shift_100_gamma)

pop_4000_recap_100_gamma = replace(pop_4000_recap_100_gamma, pop_4000_recap_100_gamma > 1, 1)
pop_4000_recap_100_gamma_bar = compute_bar(pop_4000_recap_100_gamma)

pop_4000_AW_AW_100_neugamma = replace(pop_4000_AW_AW_100_neugamma, pop_4000_AW_AW_100_neugamma > 1, 1)
pop_4000_neutral_100_neugamma = replace(pop_4000_neutral_100_neugamma, pop_4000_neutral_100_neugamma > 1, 1)
pop_4000_neutral_shift_100_neugamma = replace(pop_4000_neutral_shift_100_neugamma, pop_4000_neutral_shift_100_neugamma > 1, 1)
pop_4000_no_demo_100_neugamma = replace(pop_4000_no_demo_100_neugamma, pop_4000_no_demo_100_neugamma > 1, 1)
pop_4000_no_demo_shift_100_neugamma = replace(pop_4000_no_demo_shift_100_neugamma, pop_4000_no_demo_shift_100_neugamma > 1, 1)
pop_4000_no_demo_shift_100_neugamma = replace(pop_4000_no_demo_no_shift_100_neugamma, pop_4000_no_demo_no_shift_100_neugamma > 1, 1)
pop_4000_recap_100_neugamma = replace(pop_4000_recap_100_neugamma, pop_4000_recap_100_neugamma > 1, 1)

TAB_recap_gamma <- rbind(pop_4000_AW_AW_100_gamma_bar,
                         pop_4000_neutral_100_gamma_bar,
                         pop_4000_neutral_shift_100_gamma_bar,
                         pop_4000_no_demo_100_gamma_bar,
                         pop_4000_no_demo_shift_100_gamma_bar,
                         pop_4000_no_demo_no_shift_100_gamma_bar,
                         pop_4000_recap_100_gamma_bar)

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="100 generations after shift in DFE")
legend("top", inset=.02, c("AW_AW", "neutral", "neutral_shift", "no_demo", "no_demo_shift", "no_demo_no_shift", "recap"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
       horiz=FALSE, cex=1)

# Gamma distributions of 150th gen
pop_4000_AW_AW_150_gamma = rgamma(10000, shape=8.70426901e-02, scale=5.78155986e+03)
pop_4000_neutral_150_gamma = rgamma(10000, shape=1.04124511e-03, scale=2.68516104e+02)
pop_4000_neutral_shift_150_gamma = rgamma(10000, shape=8.57675970e-02, scale=3.39075559e+03)
pop_4000_no_demo_150_gamma = rgamma(10000, shape=9.79405888e-02, scale=3.51131482e+03)
pop_4000_no_demo_shift_150_gamma = rgamma(10000, shape=9.91500302e-02, scale=2.80774613e+03)
pop_4000_no_demo_no_shift_150_gamma = rgamma(10000, shape=9.42719126e-02, scale=1.85529527e+03)
pop_4000_recap_150_gamma = rgamma(10000, shape=8.75532829e-02, scale=5.91419095e+03)

pop_4000_AW_AW_150_gamma = replace(pop_4000_AW_AW_150_gamma, pop_4000_AW_AW_150_gamma > 1, 1)
pop_4000_AW_AW_150_gamma_bar <- compute_bar(pop_4000_AW_AW_150_gamma)

pop_4000_neutral_150_gamma = replace(pop_4000_neutral_150_gamma, pop_4000_neutral_150_gamma > 1, 1)
pop_4000_neutral_150_gamma_bar = compute_bar(pop_4000_neutral_150_gamma)

pop_4000_neutral_shift_150_gamma = replace(pop_4000_neutral_shift_150_gamma, pop_4000_neutral_shift_150_gamma > 1, 1)
pop_4000_neutral_shift_150_gamma_bar = compute_bar(pop_4000_neutral_shift_150_gamma)

pop_4000_no_demo_150_gamma = replace(pop_4000_no_demo_150_gamma, pop_4000_no_demo_150_gamma > 1, 1)
pop_4000_no_demo_150_gamma_bar = compute_bar(pop_4000_no_demo_150_gamma)

pop_4000_no_demo_shift_150_gamma = replace(pop_4000_no_demo_shift_150_gamma, pop_4000_no_demo_shift_150_gamma > 1, 1)
pop_4000_no_demo_shift_150_gamma_bar = compute_bar(pop_4000_no_demo_shift_150_gamma)

pop_4000_no_demo_no_shift_150_gamma = replace(pop_4000_no_demo_no_shift_150_gamma, pop_4000_no_demo_no_shift_150_gamma > 1, 1)
pop_4000_no_demo_no_shift_150_gamma_bar = compute_bar(pop_4000_no_demo_no_shift_150_gamma)

pop_4000_recap_150_gamma = replace(pop_4000_recap_150_gamma, pop_4000_recap_150_gamma > 1, 1)
pop_4000_recap_150_gamma_bar = compute_bar(pop_4000_recap_150_gamma)

pop_4000_AW_AW_150_neugamma = replace(pop_4000_AW_AW_150_neugamma, pop_4000_AW_AW_150_neugamma > 1, 1)
pop_4000_neutral_150_neugamma = replace(pop_4000_neutral_150_neugamma, pop_4000_neutral_150_neugamma > 1, 1)
pop_4000_neutral_shift_150_neugamma = replace(pop_4000_neutral_shift_150_neugamma, pop_4000_neutral_shift_150_neugamma > 1, 1)
pop_4000_no_demo_150_neugamma = replace(pop_4000_no_demo_150_neugamma, pop_4000_no_demo_150_neugamma > 1, 1)
pop_4000_no_demo_shift_150_neugamma = replace(pop_4000_no_demo_shift_150_neugamma, pop_4000_no_demo_shift_150_neugamma > 1, 1)
pop_4000_no_demo_shift_150_neugamma = replace(pop_4000_no_demo_no_shift_150_neugamma, pop_4000_no_demo_no_shift_150_neugamma > 1, 1)
pop_4000_recap_150_neugamma = replace(pop_4000_recap_150_neugamma, pop_4000_recap_150_neugamma > 1, 1)

TAB_recap_gamma <- rbind(pop_4000_AW_AW_150_gamma_bar,
                         pop_4000_neutral_150_gamma_bar,
                         pop_4000_neutral_shift_150_gamma_bar,
                         pop_4000_no_demo_150_gamma_bar,
                         pop_4000_no_demo_shift_150_gamma_bar,
                         pop_4000_no_demo_no_shift_150_gamma_bar,
                         pop_4000_recap_150_gamma_bar)

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="150 generations after shift in DFE")
legend("top", inset=.02, c("AW_AW", "neutral", "neutral_shift", "no_demo", "no_demo_shift", "no_demo_no_shift", "recap"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
       horiz=FALSE, cex=1)

# Gamma distributions of 200th gen
pop_4000_AW_AW_200_gamma = rgamma(10000, shape=8.70426901e-02, scale=5.78155986e+03)
pop_4000_neutral_200_gamma = rgamma(10000, shape=1.04124511e-03, scale=2.68516104e+02)
pop_4000_neutral_shift_200_gamma = rgamma(10000, shape=8.57675970e-02, scale=3.39075559e+03)
pop_4000_no_demo_200_gamma = rgamma(10000, shape=9.79405888e-02, scale=3.51131482e+03)
pop_4000_no_demo_shift_200_gamma = rgamma(10000, shape=9.91500302e-02, scale=2.80774613e+03)
pop_4000_no_demo_no_shift_200_gamma = rgamma(10000, shape=9.42719126e-02, scale=1.85529527e+03)
pop_4000_recap_200_gamma = rgamma(10000, shape=8.75532829e-02, scale=5.91419095e+03)

pop_4000_AW_AW_200_gamma = replace(pop_4000_AW_AW_200_gamma, pop_4000_AW_AW_200_gamma > 1, 1)
pop_4000_AW_AW_200_gamma_bar <- compute_bar(pop_4000_AW_AW_200_gamma)

pop_4000_neutral_200_gamma = replace(pop_4000_neutral_200_gamma, pop_4000_neutral_200_gamma > 1, 1)
pop_4000_neutral_200_gamma_bar = compute_bar(pop_4000_neutral_200_gamma)

pop_4000_neutral_shift_200_gamma = replace(pop_4000_neutral_shift_200_gamma, pop_4000_neutral_shift_200_gamma > 1, 1)
pop_4000_neutral_shift_200_gamma_bar = compute_bar(pop_4000_neutral_shift_200_gamma)

pop_4000_no_demo_200_gamma = replace(pop_4000_no_demo_200_gamma, pop_4000_no_demo_200_gamma > 1, 1)
pop_4000_no_demo_200_gamma_bar = compute_bar(pop_4000_no_demo_200_gamma)

pop_4000_no_demo_shift_200_gamma = replace(pop_4000_no_demo_shift_200_gamma, pop_4000_no_demo_shift_200_gamma > 1, 1)
pop_4000_no_demo_shift_200_gamma_bar = compute_bar(pop_4000_no_demo_shift_200_gamma)

pop_4000_no_demo_no_shift_200_gamma = replace(pop_4000_no_demo_no_shift_200_gamma, pop_4000_no_demo_no_shift_200_gamma > 1, 1)
pop_4000_no_demo_no_shift_200_gamma_bar = compute_bar(pop_4000_no_demo_no_shift_200_gamma)

pop_4000_recap_200_gamma = replace(pop_4000_recap_200_gamma, pop_4000_recap_200_gamma > 1, 1)
pop_4000_recap_200_gamma_bar = compute_bar(pop_4000_recap_200_gamma)

pop_4000_AW_AW_200_neugamma = replace(pop_4000_AW_AW_200_neugamma, pop_4000_AW_AW_200_neugamma > 1, 1)
pop_4000_neutral_200_neugamma = replace(pop_4000_neutral_200_neugamma, pop_4000_neutral_200_neugamma > 1, 1)
pop_4000_neutral_shift_200_neugamma = replace(pop_4000_neutral_shift_200_neugamma, pop_4000_neutral_shift_200_neugamma > 1, 1)
pop_4000_no_demo_200_neugamma = replace(pop_4000_no_demo_200_neugamma, pop_4000_no_demo_200_neugamma > 1, 1)
pop_4000_no_demo_shift_200_neugamma = replace(pop_4000_no_demo_shift_200_neugamma, pop_4000_no_demo_shift_200_neugamma > 1, 1)
pop_4000_no_demo_shift_200_neugamma = replace(pop_4000_no_demo_no_shift_200_neugamma, pop_4000_no_demo_no_shift_200_neugamma > 1, 1)
pop_4000_recap_200_neugamma = replace(pop_4000_recap_200_neugamma, pop_4000_recap_200_neugamma > 1, 1)

TAB_recap_gamma <- rbind(pop_4000_AW_AW_200_gamma_bar,
                         pop_4000_neutral_200_gamma_bar,
                         pop_4000_neutral_shift_200_gamma_bar,
                         pop_4000_no_demo_200_gamma_bar,
                         pop_4000_no_demo_shift_200_gamma_bar,
                         pop_4000_no_demo_no_shift_200_gamma_bar,
                         pop_4000_recap_200_gamma_bar)

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="200 generations after shift in DFE")
legend("top", inset=.02, c("AW_AW", "neutral", "neutral_shift", "no_demo", "no_demo_shift", "no_demo_no_shift", "recap"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
       horiz=FALSE, cex=1)

# Gamma distributions of 250th gen
pop_4000_AW_AW_250_gamma = rgamma(10000, shape=8.70426901e-02, scale=5.78155986e+03)
pop_4000_neutral_250_gamma = rgamma(10000, shape=1.04124511e-03, scale=2.68516104e+02)
pop_4000_neutral_shift_250_gamma = rgamma(10000, shape=8.57675970e-02, scale=3.39075559e+03)
pop_4000_no_demo_250_gamma = rgamma(10000, shape=9.79405888e-02, scale=3.51131482e+03)
pop_4000_no_demo_shift_250_gamma = rgamma(10000, shape=9.91500302e-02, scale=2.80774613e+03)
pop_4000_no_demo_no_shift_250_gamma = rgamma(10000, shape=9.42719126e-02, scale=1.85529527e+03)
pop_4000_recap_250_gamma = rgamma(10000, shape=8.75532829e-02, scale=5.91419095e+03)

pop_4000_AW_AW_250_gamma = replace(pop_4000_AW_AW_250_gamma, pop_4000_AW_AW_250_gamma > 1, 1)
pop_4000_AW_AW_250_gamma_bar <- compute_bar(pop_4000_AW_AW_250_gamma)

pop_4000_neutral_250_gamma = replace(pop_4000_neutral_250_gamma, pop_4000_neutral_250_gamma > 1, 1)
pop_4000_neutral_250_gamma_bar = compute_bar(pop_4000_neutral_250_gamma)

pop_4000_neutral_shift_250_gamma = replace(pop_4000_neutral_shift_250_gamma, pop_4000_neutral_shift_250_gamma > 1, 1)
pop_4000_neutral_shift_250_gamma_bar = compute_bar(pop_4000_neutral_shift_250_gamma)

pop_4000_no_demo_250_gamma = replace(pop_4000_no_demo_250_gamma, pop_4000_no_demo_250_gamma > 1, 1)
pop_4000_no_demo_250_gamma_bar = compute_bar(pop_4000_no_demo_250_gamma)

pop_4000_no_demo_shift_250_gamma = replace(pop_4000_no_demo_shift_250_gamma, pop_4000_no_demo_shift_250_gamma > 1, 1)
pop_4000_no_demo_shift_250_gamma_bar = compute_bar(pop_4000_no_demo_shift_250_gamma)

pop_4000_no_demo_no_shift_250_gamma = replace(pop_4000_no_demo_no_shift_250_gamma, pop_4000_no_demo_no_shift_250_gamma > 1, 1)
pop_4000_no_demo_no_shift_250_gamma_bar = compute_bar(pop_4000_no_demo_no_shift_250_gamma)

pop_4000_recap_250_gamma = replace(pop_4000_recap_250_gamma, pop_4000_recap_250_gamma > 1, 1)
pop_4000_recap_250_gamma_bar = compute_bar(pop_4000_recap_250_gamma)

pop_4000_AW_AW_250_neugamma = replace(pop_4000_AW_AW_250_neugamma, pop_4000_AW_AW_250_neugamma > 1, 1)
pop_4000_neutral_250_neugamma = replace(pop_4000_neutral_250_neugamma, pop_4000_neutral_250_neugamma > 1, 1)
pop_4000_neutral_shift_250_neugamma = replace(pop_4000_neutral_shift_250_neugamma, pop_4000_neutral_shift_250_neugamma > 1, 1)
pop_4000_no_demo_250_neugamma = replace(pop_4000_no_demo_250_neugamma, pop_4000_no_demo_250_neugamma > 1, 1)
pop_4000_no_demo_shift_250_neugamma = replace(pop_4000_no_demo_shift_250_neugamma, pop_4000_no_demo_shift_250_neugamma > 1, 1)
pop_4000_no_demo_shift_250_neugamma = replace(pop_4000_no_demo_no_shift_250_neugamma, pop_4000_no_demo_no_shift_250_neugamma > 1, 1)
pop_4000_recap_250_neugamma = replace(pop_4000_recap_250_neugamma, pop_4000_recap_250_neugamma > 1, 1)

TAB_recap_gamma <- rbind(pop_4000_AW_AW_250_gamma_bar,
                         pop_4000_neutral_250_gamma_bar,
                         pop_4000_neutral_shift_250_gamma_bar,
                         pop_4000_no_demo_250_gamma_bar,
                         pop_4000_no_demo_shift_250_gamma_bar,
                         pop_4000_no_demo_no_shift_250_gamma_bar,
                         pop_4000_recap_250_gamma_bar)

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="250 generations after shift in DFE")
legend("top", inset=.02, c("AW_AW", "neutral", "neutral_shift", "no_demo", "no_demo_shift", "no_demo_no_shift", "recap"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
       horiz=FALSE, cex=1)

# Gamma distributions of 300th gen
pop_4000_AW_AW_300_gamma = rgamma(10000, shape=8.70426901e-02, scale=5.78155986e+03)
pop_4000_neutral_300_gamma = rgamma(10000, shape=1.04124511e-03, scale=2.68516104e+02)
pop_4000_neutral_shift_300_gamma = rgamma(10000, shape=8.57675970e-02, scale=3.39075559e+03)
pop_4000_no_demo_300_gamma = rgamma(10000, shape=9.79405888e-02, scale=3.51131482e+03)
pop_4000_no_demo_shift_300_gamma = rgamma(10000, shape=9.91500302e-02, scale=2.80774613e+03)
pop_4000_no_demo_no_shift_300_gamma = rgamma(10000, shape=9.42719126e-02, scale=1.85529527e+03)
pop_4000_recap_300_gamma = rgamma(10000, shape=8.75532829e-02, scale=5.91419095e+03)

pop_4000_AW_AW_300_gamma = replace(pop_4000_AW_AW_300_gamma, pop_4000_AW_AW_300_gamma > 1, 1)
pop_4000_AW_AW_300_gamma_bar <- compute_bar(pop_4000_AW_AW_300_gamma)

pop_4000_neutral_300_gamma = replace(pop_4000_neutral_300_gamma, pop_4000_neutral_300_gamma > 1, 1)
pop_4000_neutral_300_gamma_bar = compute_bar(pop_4000_neutral_300_gamma)

pop_4000_neutral_shift_300_gamma = replace(pop_4000_neutral_shift_300_gamma, pop_4000_neutral_shift_300_gamma > 1, 1)
pop_4000_neutral_shift_300_gamma_bar = compute_bar(pop_4000_neutral_shift_300_gamma)

pop_4000_no_demo_300_gamma = replace(pop_4000_no_demo_300_gamma, pop_4000_no_demo_300_gamma > 1, 1)
pop_4000_no_demo_300_gamma_bar = compute_bar(pop_4000_no_demo_300_gamma)

pop_4000_no_demo_shift_300_gamma = replace(pop_4000_no_demo_shift_300_gamma, pop_4000_no_demo_shift_300_gamma > 1, 1)
pop_4000_no_demo_shift_300_gamma_bar = compute_bar(pop_4000_no_demo_shift_300_gamma)

pop_4000_no_demo_no_shift_300_gamma = replace(pop_4000_no_demo_no_shift_300_gamma, pop_4000_no_demo_no_shift_300_gamma > 1, 1)
pop_4000_no_demo_no_shift_300_gamma_bar = compute_bar(pop_4000_no_demo_no_shift_300_gamma)

pop_4000_recap_300_gamma = replace(pop_4000_recap_300_gamma, pop_4000_recap_300_gamma > 1, 1)
pop_4000_recap_300_gamma_bar = compute_bar(pop_4000_recap_300_gamma)

pop_4000_AW_AW_300_neugamma = replace(pop_4000_AW_AW_300_neugamma, pop_4000_AW_AW_300_neugamma > 1, 1)
pop_4000_neutral_300_neugamma = replace(pop_4000_neutral_300_neugamma, pop_4000_neutral_300_neugamma > 1, 1)
pop_4000_neutral_shift_300_neugamma = replace(pop_4000_neutral_shift_300_neugamma, pop_4000_neutral_shift_300_neugamma > 1, 1)
pop_4000_no_demo_300_neugamma = replace(pop_4000_no_demo_300_neugamma, pop_4000_no_demo_300_neugamma > 1, 1)
pop_4000_no_demo_shift_300_neugamma = replace(pop_4000_no_demo_shift_300_neugamma, pop_4000_no_demo_shift_300_neugamma > 1, 1)
pop_4000_no_demo_shift_300_neugamma = replace(pop_4000_no_demo_no_shift_300_neugamma, pop_4000_no_demo_no_shift_300_neugamma > 1, 1)
pop_4000_recap_300_neugamma = replace(pop_4000_recap_300_neugamma, pop_4000_recap_300_neugamma > 1, 1)

TAB_recap_gamma <- rbind(pop_4000_AW_AW_300_gamma_bar,
                         pop_4000_neutral_300_gamma_bar,
                         pop_4000_neutral_shift_300_gamma_bar,
                         pop_4000_no_demo_300_gamma_bar,
                         pop_4000_no_demo_shift_300_gamma_bar,
                         pop_4000_no_demo_no_shift_300_gamma_bar,
                         pop_4000_recap_300_gamma_bar)

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="300 generations after shift in DFE")
legend("top", inset=.02, c("AW_AW", "neutral", "neutral_shift", "no_demo", "no_demo_shift", "no_demo_no_shift", "recap"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
       horiz=FALSE, cex=1)

# Gamma distributions of 350th gen
pop_4000_AW_AW_350_gamma = rgamma(10000, shape=8.70426901e-02, scale=5.78155986e+03)
pop_4000_neutral_350_gamma = rgamma(10000, shape=1.04124511e-03, scale=2.68516104e+02)
pop_4000_neutral_shift_350_gamma = rgamma(10000, shape=8.57675970e-02, scale=3.39075559e+03)
pop_4000_working_neutral_shift_350_gamma = rgamma(10000, shape=7.53185953e-02, scale=3.75002654e+03)
pop_4000_no_demo_350_gamma = rgamma(10000, shape=9.79405888e-02, scale=3.51131482e+03)
pop_4000_no_demo_shift_350_gamma = rgamma(10000, shape=9.91500302e-02, scale=2.80774613e+03)
pop_4000_no_demo_no_shift_350_gamma = rgamma(10000, shape=9.42719126e-02, scale=1.85529527e+03)
pop_4000_recap_350_gamma = rgamma(10000, shape=8.75532829e-02, scale=5.91419095e+03)

pop_4000_AW_AW_350_gamma = replace(pop_4000_AW_AW_350_gamma, pop_4000_AW_AW_350_gamma > 1, 1)
pop_4000_AW_AW_350_gamma_bar <- compute_bar(pop_4000_AW_AW_350_gamma)

pop_4000_neutral_350_gamma = replace(pop_4000_neutral_350_gamma, pop_4000_neutral_350_gamma > 1, 1)
pop_4000_neutral_350_gamma_bar = compute_bar(pop_4000_neutral_350_gamma)

pop_4000_neutral_shift_350_gamma = replace(pop_4000_neutral_shift_350_gamma, pop_4000_neutral_shift_350_gamma > 1, 1)
pop_4000_neutral_shift_350_gamma_bar = compute_bar(pop_4000_neutral_shift_350_gamma)

pop_4000_working_neutral_shift_350_gamma = replace(pop_4000_working_neutral_shift_350_gamma, pop_4000_working_neutral_shift_350_gamma > 1, 1)
pop_4000_working_neutral_shift_350_gamma_bar = compute_bar(pop_4000_working_neutral_shift_350_gamma)

pop_4000_no_demo_350_gamma = replace(pop_4000_no_demo_350_gamma, pop_4000_no_demo_350_gamma > 1, 1)
pop_4000_no_demo_350_gamma_bar = compute_bar(pop_4000_no_demo_350_gamma)

pop_4000_no_demo_shift_350_gamma = replace(pop_4000_no_demo_shift_350_gamma, pop_4000_no_demo_shift_350_gamma > 1, 1)
pop_4000_no_demo_shift_350_gamma_bar = compute_bar(pop_4000_no_demo_shift_350_gamma)

pop_4000_no_demo_no_shift_350_gamma = replace(pop_4000_no_demo_no_shift_350_gamma, pop_4000_no_demo_no_shift_350_gamma > 1, 1)
pop_4000_no_demo_no_shift_350_gamma_bar = compute_bar(pop_4000_no_demo_no_shift_350_gamma)

pop_4000_recap_350_gamma = replace(pop_4000_recap_350_gamma, pop_4000_recap_350_gamma > 1, 1)
pop_4000_recap_350_gamma_bar = compute_bar(pop_4000_recap_350_gamma)

# pop_4000_AW_AW_350_neugamma = replace(pop_4000_AW_AW_350_neugamma, pop_4000_AW_AW_350_neugamma > 1, 1)
# pop_4000_neutral_350_neugamma = replace(pop_4000_neutral_350_neugamma, pop_4000_neutral_350_neugamma > 1, 1)
# pop_4000_neutral_shift_350_neugamma = replace(pop_4000_neutral_shift_350_neugamma, pop_4000_neutral_shift_350_neugamma > 1, 1)
# pop_4000_no_demo_350_neugamma = replace(pop_4000_no_demo_350_neugamma, pop_4000_no_demo_350_neugamma > 1, 1)
# pop_4000_no_demo_shift_350_neugamma = replace(pop_4000_no_demo_shift_350_neugamma, pop_4000_no_demo_shift_350_neugamma > 1, 1)
# pop_4000_no_demo_shift_350_neugamma = replace(pop_4000_no_demo_no_shift_350_neugamma, pop_4000_no_demo_no_shift_350_neugamma > 1, 1)
# pop_4000_recap_350_neugamma = replace(pop_4000_recap_350_neugamma, pop_4000_recap_350_neugamma > 1, 1)

TAB_recap_gamma <- rbind(pop_4000_AW_AW_350_gamma_bar,
                         pop_4000_neutral_350_gamma_bar,
                         pop_4000_neutral_shift_350_gamma_bar,
                         pop_4000_no_demo_350_gamma_bar,
                         pop_4000_no_demo_shift_350_gamma_bar,
                         pop_4000_no_demo_no_shift_350_gamma_bar,
                         pop_4000_recap_350_gamma_bar)

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="350 generations after shift in DFE")
legend("top", inset=.02, c("AW_AW", "neutral", "neutral_shift", "no_demo", "no_demo_shift", "no_demo_no_shift", "recap"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
       horiz=FALSE, cex=1)

TAB_recap_gamma <- rbind(pop_4000_AW_AW_350_gamma_bar,
                         pop_4000_recap_350_gamma_bar,
                         pop_4000_neutral_shift_350_gamma_bar,
                         pop_4000_working_neutral_shift_350_gamma_bar,
                         pop_4000_neutral_350_gamma_bar)

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick1", "deepskyblue"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="350 generations after shift in DFE")
legend("top", inset=.02, c("AW_AW", "recap", "neutral_shift", "working_neutral_shift", "neutral"), 
       fill=c("dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick1", "deepskyblue"), 
       horiz=FALSE, cex=1)

# Gamma distributions of 400th gen
pop_4000_AW_AW_400_gamma = rgamma(10000, shape=8.70426901e-02, scale=5.78155986e+03)
pop_4000_neutral_400_gamma = rgamma(10000, shape=1.04124511e-03, scale=2.68516104e+02)
pop_4000_neutral_shift_400_gamma = rgamma(10000, shape=8.57675970e-02, scale=3.39075559e+03)
pop_4000_no_demo_400_gamma = rgamma(10000, shape=9.79405888e-02, scale=3.51131482e+03)
pop_4000_no_demo_shift_400_gamma = rgamma(10000, shape=9.91500302e-02, scale=2.80774613e+03)
pop_4000_no_demo_no_shift_400_gamma = rgamma(10000, shape=9.42719126e-02, scale=1.85529527e+03)
pop_4000_recap_400_gamma = rgamma(10000, shape=8.75532829e-02, scale=5.91419095e+03)

pop_4000_AW_AW_400_gamma = replace(pop_4000_AW_AW_400_gamma, pop_4000_AW_AW_400_gamma > 1, 1)
pop_4000_AW_AW_400_gamma_bar <- compute_bar(pop_4000_AW_AW_400_gamma)

pop_4000_neutral_400_gamma = replace(pop_4000_neutral_400_gamma, pop_4000_neutral_400_gamma > 1, 1)
pop_4000_neutral_400_gamma_bar = compute_bar(pop_4000_neutral_400_gamma)

pop_4000_neutral_shift_400_gamma = replace(pop_4000_neutral_shift_400_gamma, pop_4000_neutral_shift_400_gamma > 1, 1)
pop_4000_neutral_shift_400_gamma_bar = compute_bar(pop_4000_neutral_shift_400_gamma)

pop_4000_no_demo_400_gamma = replace(pop_4000_no_demo_400_gamma, pop_4000_no_demo_400_gamma > 1, 1)
pop_4000_no_demo_400_gamma_bar = compute_bar(pop_4000_no_demo_400_gamma)

pop_4000_no_demo_shift_400_gamma = replace(pop_4000_no_demo_shift_400_gamma, pop_4000_no_demo_shift_400_gamma > 1, 1)
pop_4000_no_demo_shift_400_gamma_bar = compute_bar(pop_4000_no_demo_shift_400_gamma)

pop_4000_no_demo_no_shift_400_gamma = replace(pop_4000_no_demo_no_shift_400_gamma, pop_4000_no_demo_no_shift_400_gamma > 1, 1)
pop_4000_no_demo_no_shift_400_gamma_bar = compute_bar(pop_4000_no_demo_no_shift_400_gamma)

pop_4000_recap_400_gamma = replace(pop_4000_recap_400_gamma, pop_4000_recap_400_gamma > 1, 1)
pop_4000_recap_400_gamma_bar = compute_bar(pop_4000_recap_400_gamma)

pop_4000_AW_AW_400_neugamma = replace(pop_4000_AW_AW_400_neugamma, pop_4000_AW_AW_400_neugamma > 1, 1)
pop_4000_neutral_400_neugamma = replace(pop_4000_neutral_400_neugamma, pop_4000_neutral_400_neugamma > 1, 1)
pop_4000_neutral_shift_400_neugamma = replace(pop_4000_neutral_shift_400_neugamma, pop_4000_neutral_shift_400_neugamma > 1, 1)
pop_4000_no_demo_400_neugamma = replace(pop_4000_no_demo_400_neugamma, pop_4000_no_demo_400_neugamma > 1, 1)
pop_4000_no_demo_shift_400_neugamma = replace(pop_4000_no_demo_shift_400_neugamma, pop_4000_no_demo_shift_400_neugamma > 1, 1)
pop_4000_no_demo_shift_400_neugamma = replace(pop_4000_no_demo_no_shift_400_neugamma, pop_4000_no_demo_no_shift_400_neugamma > 1, 1)
pop_4000_recap_400_neugamma = replace(pop_4000_recap_400_neugamma, pop_4000_recap_400_neugamma > 1, 1)

TAB_recap_gamma <- rbind(pop_4000_AW_AW_400_gamma_bar,
                         pop_4000_neutral_400_gamma_bar,
                         pop_4000_neutral_shift_400_gamma_bar,
                         pop_4000_no_demo_400_gamma_bar,
                         pop_4000_no_demo_shift_400_gamma_bar,
                         pop_4000_no_demo_no_shift_400_gamma_bar,
                         pop_4000_recap_400_gamma_bar)

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="400 generations after shift in DFE")
legend("top", inset=.02, c("AW_AW", "neutral", "neutral_shift", "no_demo", "no_demo_shift", "no_demo_no_shift", "recap"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4", "dodgerblue3"), 
       horiz=FALSE, cex=1)
_________________
recap_gamma_1 <- replace(recap_gamma_1, recap_gamma_1 > 1, 1)

pop_4000_AW_AW_350_neugamma = rgamma(10000, shape=, scale=)
pop_4000_neutral_350_neugamma = rgamma(10000, shape=, scale=)
pop_4000_neutral_shift_350_neugamma = rgamma(10000, shape=, scale=)
pop_4000_no_demo_350_neugamma = rgamma(10000, shape=, scale=)
pop_4000_no_demo_shift_neugamma = rgamma(10000, shape=, scale=)
pop_4000_no_demo_no_shift_neugamma = rgamma(10000, shape=, scale=)
pop_4000_recap_neugamma = rgamma(10000, shape=, scale=)

pop_4000_AW_AW_350_neugamma = sort(pop_4000_AW_AW_350_neugamma)
pop_4000_neutral_350_neugamma = sort(pop_4000_neutral_350_neugamma)
pop_4000_neutral_shift_350_neugamma = sort(pop_4000_neutral_shift_350_neugamma)
pop_4000_no_demo_350_neugamma = sort(pop_4000_no_demo_350_neugamma)
pop_4000_no_demo_shift_350_neugamma = sort(pop_4000_no_demo_shift_350_neugamma)
pop_4000_no_demo_no_shift_350_neugamma = sort(pop_4000_no_demo_no_shift_350_neugamma)
pop_4000_recap_350_neugamma = sort(pop_4000_recap_350_neugamma)

# pop_4000_AW_AW_350_neugamma = c(pop_4000_AW_AW_350_neugamma[1:]) * 0 + 0.000000001, pop_4000_AW_AW_350_neugamma[:10000])
# pop_4000_neutral_350_neugamma = c(pop_4000_neutral_350_neugamma[1:]) * 0 + 0.000000001, pop_4000_neutral_350_neugamma[:10000])
# pop_4000_neutral_shift_350_neugamma = c(pop_4000_neutral_shift_350_neugamma[1:]) * 0 + 0.000000001, pop_4000_neutral_shift_350_neugamma[:10000])
# pop_4000_no_demo_350_neugamma = c(pop_4000_no_demo_350_neugamma[1:]) * 0 + 0.000000001, pop_4000_no_demo_350_neugamma[:10000])
# pop_4000_no_demo_shift_350_neugamma = c(pop_4000_no_demo_shift_350_neugamma[1:]) * 0 + 0.000000001, pop_4000_no_demo_shift_350_neugamma[:10000])
# pop_4000_no_demo_no_shift_350_neugamma = c(pop_4000_no_demo_no_shift_350_neugamma[1:]) * 0 + 0.000000001, pop_4000_no_demo_no_shift_350_neugamma[:10000])
# pop_4000_recap_350_neugamma = c(pop_4000_recap_350_neugamma[1:]) * 0 + 0.000000001, pop_4000_recap_350_neugamma[:10000])


## binning
ancestral <-rgamma(1000000, shape = 0.0988, scale = 4.45514494) 

ancestral <-replace(ancestral, ancestral > 1, 1)

ancestral_bin <- .bincode(ancestral,breaks=c(0,10e-5,10e-4,10e-3,10e-1),right=TRUE)

ancestral_hist <-hist(ancestral_bin,breaks = c(0,1,2,3,4),freq = FALSE,main="AW",xlab="s",xaxt="n")

ancestral_bar <- ancestral_hist$density

recap_gamma_1 <- rgamma(100000, shape = 0.10166433, scale = 3.65199084)
recap_gamma_1 <- replace(recap_gamma_1, recap_gamma_1 > 1, 1)
bar_recap_gamma_1 <- compute_bar(recap_gamma_1)

recap_gamma_2 <- rgamma(100000, shape = 0.09999237, scale = 4.84024034)
recap_gamma_2 <- replace(recap_gamma_2, recap_gamma_2 > 1, 1)
bar_recap_gamma_2 <- compute_bar(recap_gamma_2)

recap_gamma_3 <- rgamma(100000, shape = 0.09876697, scale = 4.65686381)
recap_gamma_3 <- replace(recap_gamma_3, recap_gamma_3 > 1, 1)
bar_recap_gamma_3 <- compute_bar(recap_gamma_3)

recap_gamma_4 <- rgamma(100000, shape = 0.10046261, scale = 4.71949352)
recap_gamma_4 <- replace(recap_gamma_4, recap_gamma_4 > 1, 1)
bar_recap_gamma_4 <- compute_bar(recap_gamma_4)

recap_gamma_5 <- rgamma(100000, shape = 0.10225009, scale =  2.77497495)
recap_gamma_5 <- replace(recap_gamma_5, recap_gamma_5 > 1, 1)
bar_recap_gamma_5 <- compute_bar(recap_gamma_5)


TAB_recap_gamma <- rbind(ancestral_bar, bar_recap_gamma_1, bar_recap_gamma_2, bar_recap_gamma_3, bar_recap_gamma_4, bar_recap_gamma_5) 

barplot(TAB_recap_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="(Recapitulated) Gamma distributed DFE")
legend("top", inset=.02, c("Ancestral", "Seed 1", "Seed 2", "Seed 3", "Seed 4", "Seed 5"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
       horiz=FALSE, cex=1)

recap_neugamma_1 <- rgamma(10000, shape = 0.18405779, scale =  0.31091049)
recap_neugamma_1 <- sort(recap_neugamma_1)
recap_neugamma_1 <- replace(recap_neugamma_1, recap_neugamma_1 > 1, 1)
recap_neugamma_1 <- c(recap_neugamma_1[1:1424] * 0 + 0.000000001, recap_neugamma_1[1425:10000])
bar_recap_neugamma_1 <- compute_bar(recap_neugamma_1)

recap_neugamma_2 <- rgamma(10000, shape = 0.18167239, scale = 0.46937791)
recap_neugamma_2 <- sort(recap_neugamma_2)
recap_neugamma_2 <- replace(recap_neugamma_2, recap_neugamma_2 > 1, 1)
recap_neugamma_2 <- c(recap_neugamma_2[1:1478] * 0 + 0.000000001, recap_neugamma_2[1479:10000])
bar_recap_neugamma_2 <- compute_bar(recap_neugamma_2)

recap_neugamma_3 <- rgamma(10000, shape = 0.15829279, scale = 0.6388670)
recap_neugamma_3 <- sort(recap_neugamma_3)
recap_neugamma_3 <- replace(recap_neugamma_3, recap_neugamma_3 > 1, 1)
recap_neugamma_3 <- c(recap_neugamma_3[1:1209] * 0 + 0.000000001, recap_neugamma_3[1210:10000])
bar_recap_neugamma_3 <- compute_bar(recap_neugamma_3)

recap_neugamma_4 <- rgamma(10000, shape = 0.17164891, scale = 1.0565724)
recap_neugamma_4 <- sort(recap_neugamma_4)
recap_neugamma_4 <- replace(recap_neugamma_4, recap_neugamma_4 > 1, 1)
recap_neugamma_4 <- c(recap_neugamma_4[1:1546] * 0 + 0.000000001, recap_neugamma_4[1547:10000])
bar_recap_neugamma_4 <- compute_bar(recap_neugamma_4)

recap_neugamma_5 <- rgamma(10000, shape = 0.20197546, scale = 0.16501615)
recap_neugamma_5 <- sort(recap_neugamma_5)
recap_neugamma_5 <- replace(recap_neugamma_5, recap_neugamma_5 > 1, 1)
recap_neugamma_5 <- c(recap_neugamma_5[1:1559] * 0 + 0.000000001, recap_neugamma_5[1600:10000])
bar_recap_neugamma_5 <- compute_bar(recap_neugamma_5)

TAB_recap_neugamma <- rbind(ancestral_bar, bar_recap_neugamma_1, bar_recap_neugamma_2, bar_recap_neugamma_3, bar_recap_neugamma_4, bar_recap_neugamma_5) 

barplot(TAB_recap_neugamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="(Recapitulated) Neutral-gamma distributed DFE")
legend("top", inset=.02, c("Ancestral", "Seed 1", "Seed 2", "Seed 3", "Seed 4", "Seed 5"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
       horiz=FALSE, cex=1)

bar_gamma_1 <- compute_bar(seed_1_gamma)
bar_gamma_2 <- compute_bar(seed_2_gamma)
bar_gamma_3 <- compute_bar(seed_3_gamma)
bar_gamma_4 <- compute_bar(seed_4_gamma)
bar_gamma_5 <- compute_bar(seed_5_gamma)

TAB_gamma <- rbind(ancestral_bar, bar_gamma_1, bar_gamma_2, bar_gamma_3, bar_gamma_4, bar_gamma_5) 

barplot(TAB_gamma, beside=T, xlab="s", ylab="Density", 
        col=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
        names.arg = c("0 - 0.0001", "0.0001 - 0.001", "0.001 - 0.01", "0.01 - 1"), 
        main="(Shift to neutral) Gamma distributed DFE")
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
        main="(Shift to neutral) Neutral-gamma distributed DFE")
legend("top", inset=.02, c("Ancestral", "Seed 1", "Seed 2", "Seed 3", "Seed 4", "Seed 5"), 
       fill=c("firebrick1", "dodgerblue2", "dodgerblue", "deepskyblue2", "firebrick3", "dodgerblue4"), 
       horiz=FALSE, cex=1)


____


nonsyn_0 = c(29, 12, 9, 7, 8, 4, 9, 3)
nonsyn_10 = c(35, 7, 9, 4, 8, 7, 12, 2)
nonsyn_20 = c(17, 16, 12, 3, 10, 5, 11, 4)
nonsyn_30 = c(30, 13, 8, 10, 6, 8, 7, 5)
nonsyn_40 = c(30, 19, 6, 12, 10, 10, 1, 2)
nonsyn_50 = c(24, 13, 6, 7, 12, 8, 3, 5)
nonsyn_60 = c(21, 16, 7, 8, 8, 4, 10, 1)
nonsyn_70 = c(17, 15, 8, 10, 7, 5, 9, 2)
nonsyn_80 = c(24, 10, 8, 11, 7, 6, 6, 5)
nonsyn_90 = c(24, 9, 7, 8, 7, 7, 12, 1)
nonsyn_100 = c(12, 21, 9, 6, 10, 5, 7, 4)
nonsyn_110 = c(19, 16, 11, 6, 10, 4, 8, 2)
nonsyn_120 = c(20, 16, 11, 12, 9, 4, 9, 2)
nonsyn_130 = c(17, 13, 10, 9, 9, 7, 7, 6)
nonsyn_140 = c(12, 11, 13, 8, 4, 6, 7, 4)
nonsyn_150 = c(20, 10, 5, 12, 8, 10, 6, 5)
nonsyn_200 = c(20, 9, 9, 8, 4, 3, 13, 2)
nonsyn_250 = c(17, 5, 7, 10, 11, 7, 7, 3)
nonsyn_300 = c(8, 6, 10, 10, 6, 10, 5, 6)
nonsyn_350 = c(10, 5, 7, 13, 4, 13, 8, 5)
nonsyn_400 = c(9, 10, 6, 6, 5, 6, 10, 4)

x_axis = 1:8

df = data.frame(nonsyn_0, nonsyn_10, nonsyn_20, nonsyn_30, nonsyn_40,
                nonsyn_50, nonsyn_60, nonsyn_70, nonsyn_80, nonsyn_90,
                nonsyn_100, nonsyn_110, nonsyn_120, nonsyn_130, nonsyn_140,
                nonsyn_150, nonsyn_200, nonsyn_250, nonsyn_300, nonsyn_350,
                nonsyn_400,x_axis = x_axis)
p_df <- ggplot(data=df, aes(x=x_axis, y=nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_10, color='nonsyn_10')) +
  geom_line(aes(x=x_axis, y=nonsyn_10, color='nonsyn_10')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_20, color='nonsyn_20')) +
  geom_line(aes(x=x_axis, y=nonsyn_20, color='nonsyn_20')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_30, color='nonsyn_30')) +
  geom_line(aes(x=x_axis, y=nonsyn_30, color='nonsyn_30')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_40, color='nonsyn_40')) +
  geom_line(aes(x=x_axis, y=nonsyn_40, color='nonsyn_40')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_50, color='nonsyn_50')) +
  geom_line(aes(x=x_axis, y=nonsyn_50, color='nonsyn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_60, color='nonsyn_60')) +
  geom_line(aes(x=x_axis, y=nonsyn_60, color='nonsyn_60')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_70, color='nonsyn_70')) +
  geom_line(aes(x=x_axis, y=nonsyn_70, color='nonsyn_70')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_80, color='nonsyn_80')) +
  geom_line(aes(x=x_axis, y=nonsyn_80, color='nonsyn_80')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_90, color='nonsyn_90')) +
  geom_line(aes(x=x_axis, y=nonsyn_90, color='nonsyn_90')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_100, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_110, color='nonsyn_110')) +
  geom_line(aes(x=x_axis, y=nonsyn_110, color='nonsyn_110')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_120, color='nonsyn_120')) +
  geom_line(aes(x=x_axis, y=nonsyn_120, color='nonsyn_120')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_130, color='nonsyn_130')) +
  geom_line(aes(x=x_axis, y=nonsyn_130, color='nonsyn_130')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_140, color='nonsyn_140')) +
  geom_line(aes(x=x_axis, y=nonsyn_140, color='nonsyn_140')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_150, color='nonsyn_150')) +
  geom_line(aes(x=x_axis, y=nonsyn_150, color='nonsyn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_200, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_250, color='nonsyn_250')) +
  geom_line(aes(x=x_axis, y=nonsyn_250, color='nonsyn_250')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_300, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_350, color='nonsyn_350')) +
  geom_line(aes(x=x_axis, y=nonsyn_350, color='nonsyn_350')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_400, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('#140000', '#270000','#3b0000', '#4e0000', '#620000', 
                              '#760000', '#890000', '#9d0000', '#b10000', '#c40000', 
                              '#d80000', '#eb0000', '#ff0000', '#ff1414', '#ff2727', 
                              '#ff3b3b', '#ff4e4e', '#ff6262', '#ff8989', '#ff9d9d',
                              '#ffb1b1'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_10', 'nonsyn_20', 'nonsyn_30', 'nonsyn_40',
                              'nonsyn_50', 'nonsyn_60', 'nonsyn_70', 'nonsyn_80', 'nonsyn_90',
                              'nonsyn_100', 'nonsyn_110', 'nonsyn_120', 'nonsyn_130', 'nonsyn_140',
                              'nonsyn_150', 'nonsyn_200', 'nonsyn_250', 'nonsyn_300', 'nonsyn_350',
                              'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_10', 'nonsyn_20', 'nonsyn_30', 'nonsyn_40',
                              'nonsyn_50', 'nonsyn_60', 'nonsyn_70', 'nonsyn_80', 'nonsyn_90',
                              'nonsyn_100', 'nonsyn_110', 'nonsyn_120', 'nonsyn_130', 'nonsyn_140',
                              'nonsyn_150', 'nonsyn_200', 'nonsyn_250', 'nonsyn_300', 'nonsyn_350',
                              'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift')

p_df

p_df <- ggplot(data=df, aes(x=x_axis, y=nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_100, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_200, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_300, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=nonsyn_400, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'purple', 'blue', 'green', 'red'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_100', 'nonsyn_200', 'nonsyn_300', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_100', 'nonsyn_200', 'nonsyn_300', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift')

p_df

x_axis = 1:8

df = data.frame(pop_4000_recap_nonsyn_0, pop_4000_recap_nonsyn_50, 
                pop_4000_recap_nonsyn_100, pop_4000_recap_nonsyn_150, 
                pop_4000_recap_nonsyn_200, pop_4000_recap_nonsyn_250, 
                pop_4000_recap_nonsyn_300, pop_4000_recap_nonsyn_350,
                pop_4000_recap_nonsyn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_recap_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_recap_nonsyn_50, color='nonsyn_50')) +
  geom_line(aes(x=x_axis, y=pop_4000_recap_nonsyn_50, color='nonsyn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_recap_nonsyn_100, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_recap_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_recap_nonsyn_150, color='nonsyn_150')) +
  geom_line(aes(x=x_axis, y=pop_4000_recap_nonsyn_150, color='nonsyn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_recap_nonsyn_200, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_recap_nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_recap_nonsyn_250, color='nonsyn_250')) +
  geom_line(aes(x=x_axis, y=pop_4000_recap_nonsyn_250, color='nonsyn_250')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_recap_nonsyn_300, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_recap_nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_recap_nonsyn_350, color='nonsyn_350')) +
  geom_line(aes(x=x_axis, y=pop_4000_recap_nonsyn_350, color='nonsyn_350')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_recap_nonsyn_400, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_recap_nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'purple', 'violet', 'blue', 'green', 'yellow', 'orange', 'red', 'grey'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, Recap')

p_df

x_axis = 1:8

pop_4000_neutral_syn_0 = pop_4000_neutral_syn_0 / sum(pop_4000_neutral_syn_0)
pop_4000_neutral_syn_50 = pop_4000_neutral_syn_50 / sum(pop_4000_neutral_syn_50)
pop_4000_neutral_syn_100 = pop_4000_neutral_syn_100 / sum(pop_4000_neutral_syn_100)
pop_4000_neutral_syn_150 = pop_4000_neutral_syn_150 / sum(pop_4000_neutral_syn_150)
pop_4000_neutral_syn_200 = pop_4000_neutral_syn_200 / sum(pop_4000_neutral_syn_200)
pop_4000_neutral_syn_250 = pop_4000_neutral_syn_250 / sum(pop_4000_neutral_syn_250)
pop_4000_neutral_syn_300 = pop_4000_neutral_syn_300 / sum(pop_4000_neutral_syn_300)
pop_4000_neutral_syn_350 = pop_4000_neutral_syn_350 / sum(pop_4000_neutral_syn_350)
pop_4000_neutral_syn_400 = pop_4000_neutral_syn_400 / sum(pop_4000_neutral_syn_400)

pop_4000_neutral_nonsyn_0 = pop_4000_neutral_nonsyn_0 / sum(pop_4000_neutral_nonsyn_0)
pop_4000_neutral_nonsyn_50 = pop_4000_neutral_nonsyn_50 / sum(pop_4000_neutral_nonsyn_50)
pop_4000_neutral_nonsyn_100 = pop_4000_neutral_nonsyn_100 / sum(pop_4000_neutral_nonsyn_100)
pop_4000_neutral_nonsyn_150 = pop_4000_neutral_nonsyn_150 / sum(pop_4000_neutral_nonsyn_150)
pop_4000_neutral_nonsyn_200 = pop_4000_neutral_nonsyn_200 / sum(pop_4000_neutral_nonsyn_200)
pop_4000_neutral_nonsyn_250 = pop_4000_neutral_nonsyn_250 / sum(pop_4000_neutral_nonsyn_250)
pop_4000_neutral_nonsyn_300 = pop_4000_neutral_nonsyn_300 / sum(pop_4000_neutral_nonsyn_300)
pop_4000_neutral_nonsyn_350 = pop_4000_neutral_nonsyn_350 / sum(pop_4000_neutral_nonsyn_350)
pop_4000_neutral_nonsyn_400 = pop_4000_neutral_nonsyn_400 / sum(pop_4000_neutral_nonsyn_400)


df = data.frame(pop_4000_neutral_syn_0, pop_4000_neutral_syn_50, 
                pop_4000_neutral_syn_100, pop_4000_neutral_syn_150, 
                pop_4000_neutral_syn_200, pop_4000_neutral_syn_250, 
                pop_4000_neutral_syn_300, pop_4000_neutral_syn_350,
                pop_4000_neutral_syn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_neutral_syn_0, color = 'syn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_syn_50, color='syn_50')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_syn_50, color='syn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_syn_100, color='syn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_syn_100, color='syn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_syn_150, color='syn_150')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_syn_150, color='syn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_syn_200, color='syn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_syn_200, color='syn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_syn_250, color='syn_250')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_syn_250, color='syn_250')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_syn_300, color='syn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_syn_300, color='syn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_syn_350, color='syn_350')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_syn_350, color='syn_350')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_syn_400, color='syn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_syn_400, color='syn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'purple', 'violet', 'blue', 'green', 'yellow', 'orange', 'red', 'grey'),
                     name='Data Type',
                     breaks=c('syn_0', 'syn_50', 'syn_100', 'syn_150', 'syn_200', 
                              'syn_250', 'syn_300', 'syn_350', 'syn_400'),
                     labels=c('syn_0', 'syn_50', 'syn_100', 'syn_150', 'syn_200', 
                              'syn_250', 'syn_300', 'syn_350', 'syn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, Neutral (Synonymous)')

p_df

df = data.frame(pop_4000_neutral_nonsyn_0, pop_4000_neutral_nonsyn_50, 
                pop_4000_neutral_nonsyn_100, pop_4000_neutral_nonsyn_150, 
                pop_4000_neutral_nonsyn_200, pop_4000_neutral_nonsyn_250, 
                pop_4000_neutral_nonsyn_300, pop_4000_neutral_nonsyn_350,
                pop_4000_neutral_nonsyn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_neutral_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_nonsyn_50, color='nonsyn_50')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_nonsyn_50, color='nonsyn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_nonsyn_100, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_nonsyn_150, color='nonsyn_150')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_nonsyn_150, color='nonsyn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_nonsyn_200, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_nonsyn_250, color='nonsyn_250')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_nonsyn_250, color='nonsyn_250')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_nonsyn_300, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_nonsyn_350, color='nonsyn_350')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_nonsyn_350, color='nonsyn_350')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_nonsyn_400, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'purple', 'violet', 'blue', 'green', 'yellow', 'orange', 'red', 'grey'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, Neutral (Nonsynonymous)')

p_df

x_axis = 1:8

df = data.frame(pop_4000_neutral_shift_nonsyn_0, pop_4000_neutral_shift_nonsyn_50, 
                pop_4000_neutral_shift_nonsyn_100, pop_4000_neutral_shift_nonsyn_150, 
                pop_4000_neutral_shift_nonsyn_200, pop_4000_neutral_shift_nonsyn_250, 
                pop_4000_neutral_shift_nonsyn_300, pop_4000_neutral_shift_nonsyn_350,
                pop_4000_neutral_shift_nonsyn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_50, color='nonsyn_50')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_50, color='nonsyn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_100, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_150, color='nonsyn_150')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_150, color='nonsyn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_200, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_250, color='nonsyn_250')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_250, color='nonsyn_250')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_300, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_350, color='nonsyn_350')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_350, color='nonsyn_350')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_400, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'purple', 'violet', 'blue', 'green', 'yellow', 'orange', 'red', 'grey'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, Shift to Neutral')

x_axis = 1:8

df = data.frame(pop_4000_neutral_shift_nonsyn_0, pop_4000_neutral_shift_nonsyn_50, 
                pop_4000_neutral_shift_nonsyn_100, pop_4000_neutral_shift_nonsyn_150, 
                pop_4000_neutral_shift_nonsyn_200, pop_4000_neutral_shift_nonsyn_250, 
                pop_4000_neutral_shift_nonsyn_300, pop_4000_neutral_shift_nonsyn_350,
                pop_4000_neutral_shift_nonsyn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_50, color='nonsyn_50')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_50, color='nonsyn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_100, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_150, color='nonsyn_150')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_150, color='nonsyn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_200, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_250, color='nonsyn_250')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_250, color='nonsyn_250')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_300, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_350, color='nonsyn_350')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_350, color='nonsyn_350')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_400, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'purple', 'violet', 'blue', 'green', 'yellow', 'orange', 'red', 'grey'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, Shift to Neutral')

p_df

x_axis = 1:8

df = data.frame(pop_4000_neutral_shift_nonsyn_0,
                pop_4000_neutral_shift_nonsyn_100,
                pop_4000_neutral_shift_nonsyn_200, 
                pop_4000_neutral_shift_nonsyn_300,
                pop_4000_neutral_shift_nonsyn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_100, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_200, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_300, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_400, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_neutral_shift_nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'violet', 'blue', 'yellow', 'red'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_100', 'nonsyn_200', 
                              'nonsyn_300', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_100', 'nonsyn_200', 
                              'nonsyn_300', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, Shift to Neutral (bugged)')

p_df

x_axis = 1:8

df = data.frame(pop_4000_working_neutral_shift_nonsyn_0,
                pop_4000_working_neutral_shift_nonsyn_100,
                pop_4000_working_neutral_shift_nonsyn_200, 
                pop_4000_working_neutral_shift_nonsyn_300,
                pop_4000_working_neutral_shift_nonsyn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_working_neutral_shift_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_working_neutral_shift_nonsyn_100, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_working_neutral_shift_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_working_neutral_shift_nonsyn_200, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_working_neutral_shift_nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_working_neutral_shift_nonsyn_300, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_working_neutral_shift_nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_working_neutral_shift_nonsyn_400, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_working_neutral_shift_nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'violet', 'blue', 'yellow', 'red'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_100', 'nonsyn_200', 
                              'nonsyn_300', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_100', 'nonsyn_200', 
                              'nonsyn_300', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, Shift to Neutral (fixed?)')

p_df

x_axis = 1:8

df = data.frame(pop_4000_AW_AW_nonsyn_0, pop_4000_AW_AW_nonsyn_50, 
                pop_4000_AW_AW_nonsyn_100, pop_4000_AW_AW_nonsyn_150, 
                pop_4000_AW_AW_nonsyn_200, pop_4000_AW_AW_nonsyn_250, 
                pop_4000_AW_AW_nonsyn_300, pop_4000_AW_AW_nonsyn_350,
                pop_4000_AW_AW_nonsyn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_50, color='nonsyn_50')) +
  geom_line(aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_50, color='nonsyn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_50, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_50, color='nonsyn_150')) +
  geom_line(aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_150, color='nonsyn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_50, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_50, color='nonsyn_250')) +
  geom_line(aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_250, color='nonsyn_250')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_50, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_50, color='nonsyn_350')) +
  geom_line(aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_350, color='nonsyn_350')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_50, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_AW_AW_nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'purple', 'violet', 'blue', 'green', 'yellow', 'orange', 'red', 'grey'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, AW --> AW')

p_df

df = data.frame(pop_4000_no_demo_shift_nonsyn_0, pop_4000_no_demo_shift_nonsyn_50, 
                pop_4000_no_demo_shift_nonsyn_100, pop_4000_no_demo_shift_nonsyn_150, 
                pop_4000_no_demo_shift_nonsyn_200, pop_4000_no_demo_shift_nonsyn_250, 
                pop_4000_no_demo_shift_nonsyn_300, pop_4000_no_demo_shift_nonsyn_350,
                pop_4000_no_demo_shift_nonsyn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_50')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_150')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_150, color='nonsyn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_250')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_250, color='nonsyn_250')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_350')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_350, color='nonsyn_350')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'purple', 'violet', 'blue', 'green', 'yellow', 'orange', 'red', 'grey'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 'nonsyn_150', 'nonsyn_200', 
                              'nonsyn_250', 'nonsyn_300', 'nonsyn_350', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, No Demographic Shift (Nonsynonymous)')

p_df

df = data.frame(pop_4000_no_demo_shift_syn_0, pop_4000_no_demo_shift_syn_50, 
                pop_4000_no_demo_shift_syn_100, pop_4000_no_demo_shift_syn_150, 
                pop_4000_no_demo_shift_syn_200, pop_4000_no_demo_shift_syn_250, 
                pop_4000_no_demo_shift_syn_300, pop_4000_no_demo_shift_syn_350,
                pop_4000_no_demo_shift_syn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_0, color = 'syn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_50')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_100, color='syn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_150')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_150, color='syn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_200, color='syn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_250')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_250, color='syn_250')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_300, color='syn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_350')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_350, color='syn_350')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_400, color='syn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'purple', 'violet', 'blue', 'green', 'yellow', 'orange', 'red', 'grey'),
                     name='Data Type',
                     breaks=c('syn_0', 'syn_50', 'syn_100', 'syn_150', 'syn_200', 
                              'syn_250', 'syn_300', 'syn_350', 'syn_400'),
                     labels=c('syn_0', 'syn_50', 'syn_100', 'syn_150', 'syn_200', 
                              'syn_250', 'syn_300', 'syn_350', 'syn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, No Demographic Shift (Synonymous)')

p_df


df = data.frame(pop_4000_no_demo_shift_nonsyn_0, pop_4000_no_demo_shift_nonsyn_100,
                pop_4000_no_demo_shift_nonsyn_200, pop_4000_no_demo_shift_nonsyn_300,
                pop_4000_no_demo_shift_nonsyn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_50, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'violet', 'green', 'orange', 'grey'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_100', 'nonsyn_200', 
                              'nonsyn_300', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_100', 'nonsyn_200', 
                              'nonsyn_300', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, No Demographic Shift (Nonsynonymous)')

p_df

df = data.frame(pop_4000_no_demo_shift_syn_0, pop_4000_no_demo_shift_syn_100,
                pop_4000_no_demo_shift_syn_200, pop_4000_no_demo_shift_syn_300,
                pop_4000_no_demo_shift_syn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_0, color = 'syn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_100, color='syn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_200, color='syn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_300, color='syn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_50, color='syn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_400, color='syn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'violet', 'green', 'orange', 'grey'),
                     name='Data Type',
                     breaks=c('syn_0', 'syn_100', 'syn_200', 
                              'syn_300', 'syn_400'),
                     labels=c('syn_0', 'syn_100', 'syn_200', 
                              'syn_300', 'syn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, No Demographic Shift (Synonymous)')

p_df

pop_4000_no_demo_shift_nonsyn_0 = pop_4000_no_demo_shift_nonsyn_0 / sum(pop_4000_no_demo_shift_nonsyn_0)
pop_4000_no_demo_shift_nonsyn_100 = pop_4000_no_demo_shift_nonsyn_100 / sum(pop_4000_no_demo_shift_nonsyn_100)
pop_4000_no_demo_shift_nonsyn_200 = pop_4000_no_demo_shift_nonsyn_200 / sum(pop_4000_no_demo_shift_nonsyn_200)
pop_4000_no_demo_shift_nonsyn_300 = pop_4000_no_demo_shift_nonsyn_300 / sum(pop_4000_no_demo_shift_nonsyn_300)
pop_4000_no_demo_shift_nonsyn_400 = pop_4000_no_demo_shift_nonsyn_400 / sum(pop_4000_no_demo_shift_nonsyn_400)
pop_4000_no_demo_shift_syn_0 = pop_4000_no_demo_shift_syn_0 / sum(pop_4000_no_demo_shift_syn_0)
pop_4000_no_demo_shift_syn_100 = pop_4000_no_demo_shift_syn_100 / sum(pop_4000_no_demo_shift_syn_100)
pop_4000_no_demo_shift_syn_200 = pop_4000_no_demo_shift_syn_200 / sum(pop_4000_no_demo_shift_syn_200)
pop_4000_no_demo_shift_syn_300 = pop_4000_no_demo_shift_syn_300 / sum(pop_4000_no_demo_shift_syn_300)
pop_4000_no_demo_shift_syn_400 = pop_4000_no_demo_shift_syn_400 / sum(pop_4000_no_demo_shift_syn_400)

df = data.frame(pop_4000_no_demo_shift_nonsyn_0, pop_4000_no_demo_shift_nonsyn_100,
                pop_4000_no_demo_shift_nonsyn_200, pop_4000_no_demo_shift_nonsyn_300,
                pop_4000_no_demo_shift_nonsyn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_100, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_200, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_200, color='nonsyn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_300, color='nonsyn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_300, color='nonsyn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_400, color='nonsyn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_nonsyn_400, color='nonsyn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'violet', 'green', 'orange', 'grey'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_100', 'nonsyn_200', 
                              'nonsyn_300', 'nonsyn_400'),
                     labels=c('nonsyn_0', 'nonsyn_100', 'nonsyn_200', 
                              'nonsyn_300', 'nonsyn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, No Demographic Shift (Nonsynonymous)')

p_df

df = data.frame(pop_4000_no_demo_shift_syn_0, pop_4000_no_demo_shift_syn_100,
                pop_4000_no_demo_shift_syn_200, pop_4000_no_demo_shift_syn_300,
                pop_4000_no_demo_shift_syn_400, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_0, color = 'syn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_100, color='syn_100')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_100, color='syn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_200, color='syn_200')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_200, color='syn_200')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_300, color='syn_300')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_300, color='syn_300')) +
  geom_point(shape=1, aes(x=x_axis, y=pop_4000_no_demo_shift_syn_400, color='syn_400')) +
  geom_line(aes(x=x_axis, y=pop_4000_no_demo_shift_syn_400, color='syn_400')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'violet', 'green', 'orange', 'grey'),
                     name='Data Type',
                     breaks=c('syn_0', 'syn_100', 'syn_200', 
                              'syn_300', 'syn_400'),
                     labels=c('syn_0', 'syn_100', 'syn_200', 
                              'syn_300', 'syn_400')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, No Demographic Shift (Synonymous)')
p_df

df = data.frame(full_no_demo_nonsyn_0, full_no_demo_nonsyn_50,
                full_no_demo_nonsyn_100, full_no_demo_nonsyn_150,
                full_no_demo_nonsyn_200, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=full_no_demo_nonsyn_0, color = 'nonsyn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=full_no_demo_nonsyn_50, color='nonsyn_50')) +
  geom_line(aes(x=x_axis, y=full_no_demo_nonsyn_50, color='nonsyn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=full_no_demo_nonsyn_100, color='nonsyn_100')) +
  geom_line(aes(x=x_axis, y=full_no_demo_nonsyn_100, color='nonsyn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=full_no_demo_nonsyn_150, color='nonsyn_150')) +
  geom_line(aes(x=x_axis, y=full_no_demo_nonsyn_150, color='nonsyn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=full_no_demo_nonsyn_200, color='nonsyn_200')) +
  geom_line(aes(x=x_axis, y=full_no_demo_nonsyn_200, color='nonsyn_200')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'violet', 'green', 'orange', 'grey'),
                     name='Data Type',
                     breaks=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 
                              'nonsyn_150', 'nonsyn_200'),
                     labels=c('nonsyn_0', 'nonsyn_50', 'nonsyn_100', 
                              'nonsyn_150', 'nonsyn_200')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, No Demographic Shift (Nonsynonymous)')
p_df

df = data.frame(full_no_demo_syn_0, full_no_demo_syn_50,
                full_no_demo_syn_100, full_no_demo_syn_150,
                full_no_demo_syn_200, x_axis = x_axis)

p_df <- ggplot(data=df, aes(x=x_axis, y=full_no_demo_syn_0, color = 'syn_0')) +
  geom_point() +
  geom_line() +
  geom_point(shape=1, aes(x=x_axis, y=full_no_demo_syn_50, color='syn_50')) +
  geom_line(aes(x=x_axis, y=full_no_demo_syn_50, color='syn_50')) +
  geom_point(shape=1, aes(x=x_axis, y=full_no_demo_syn_100, color='syn_100')) +
  geom_line(aes(x=x_axis, y=full_no_demo_syn_100, color='syn_100')) +
  geom_point(shape=1, aes(x=x_axis, y=full_no_demo_syn_150, color='syn_150')) +
  geom_line(aes(x=x_axis, y=full_no_demo_syn_150, color='syn_150')) +
  geom_point(shape=1, aes(x=x_axis, y=full_no_demo_syn_200, color='syn_200')) +
  geom_line(aes(x=x_axis, y=full_no_demo_syn_200, color='syn_200')) +
  scale_x_continuous(name='Frequency in Sample', breaks=x_axis, limits = c(1, 8)) +
  scale_y_continuous(name='Number of SNPs') +
  scale_color_manual(values=c('black', 'violet', 'green', 'orange', 'grey'),
                     name='Data Type',
                     breaks=c('syn_0', 'syn_50', 'syn_100', 
                              'syn_150', 'syn_200'),
                     labels=c('syn_0', 'syn_50', 'syn_100', 
                              'syn_150', 'syn_200')) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle('Generations since shift, No Demographic Shift (Synonymous)')
p_df
