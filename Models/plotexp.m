ecefXgold = [3.5826 5.60308 20.1141];
ecefYgold = [0.0394826 0.0394826 0.0828195];
ecefZgold = [0.00382241 0.00382241 0.00314704];
velXgold = [0.0169528 0.0199173 5.60308];
velYgold = [0.0394826 0.0394826 0.0828195];
velZgold = [0.00382241 0.00382241 0.00314704];

exp11ecefX = [861.883 , 2431.1 , 678.953 ];
exp11ecefY = [348.814 , 1518.65 , 499.222 ];
exp11ecefZ = [0.123305 , 0.155086 , 0.567656 ];
exp11velX = [8.20331 , 30.782 , 7.32822 ];
exp11velY = [23.4213 , 75.1929 , 20.0333 ];
exp11velZ = [87.7399 , 87.1907 , 245.723 ];

exp12ecefX = [4.3248 , 20.5617 , 5.41018 ];
exp12ecefY = [0.0226056 , 0.39742 , 0.04816 ];
exp12ecefZ = [3.81041e-06 , 3.30294e-05 , 9.04865e-06 ];
exp12velX = [0.0248871 , 0.150687 , 0.0260141 ];
exp12velY = [0.0475246 , 0.908185 , 0.0899591 ];
exp12velZ = [0.00406042 , 0.0228906 , 0.00340827 ];

exp13ecefX = [3.57373 , 20.1609 , 5.60304 ];
exp13ecefY = [0.0234386 , 0.366496 , 0.0445943 ];
exp13ecefZ = [3.55578e-06 , 3.19863e-05 , 8.7636e-06 ];
exp13velX = [0.0184494 , 0.129497 , 0.0222426 ];
exp13velY = [0.0396467 , 0.863711 , 0.084737 ];
exp13velZ = [0.00355928 , 0.0189619 , 0.00306268 ];

ecefXToPlot = [ exp11ecefX(3), exp12ecefX(3), exp13ecefX(3) ];
ecefYToPlot = [ exp11ecefY(3), exp12ecefY(3), exp13ecefY(3) ];
ecefZToPlot = [ exp11ecefZ(3), exp12ecefZ(3), exp13ecefZ(3) ];
ecefXGoldToPlot = [ ecefXgold(3), ecefXgold(3), ecefXgold(3) ];
ecefYGoldToPlot = [ ecefXgold(3), ecefXgold(3), ecefXgold(3) ];
ecefZGoldToPlot = [ ecefXgold(3), ecefXgold(3), ecefXgold(3) ];

semilogy(ecefXToPlot);
hold on;
semilogy(ecefYToPlot);
semilogy(ecefZToPlot);
semilogy(ecefXGoldToPlot);
semilogy(ecefYGoldToPlot);
semilogy(ecefZGoldToPlot);

velXToPlot = [ exp11ecefX(3), exp12ecefX(3), exp13ecefX(3) ];
velYToPlot = [ exp11ecefX(3), exp12ecefX(3), exp13ecefX(3) ];
velZToPlot = [ exp11ecefX(3), exp12ecefX(3), exp13ecefX(3) ];