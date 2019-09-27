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

exp21ecefX = [4.3248, 5.41018, 20.5617];
exp21ecefY = [0.0226056, 0.04816, 0.39742];
exp21ecefZ = [3.81041e-06, 9.04865e-06, 3.30294e-05];
exp21velX = [0.0248871, 0.0260141, 0.150687];
exp21velY = [0.0475246, 0.0899591, 0.908185];
exp21velZ = [0.00406042 0.00340827 0.0228906];

exp22ecefX = [562.483 318.16 1009.02];
exp22ecefY = [148.597 203.971 811.198];
exp22ecefZ = [0.0377065 0.0298226 0.116483];
exp22velX = [19.8981 29.438 114.018];
exp22velY = [89.8 156.398 613.732];
exp22velZ = [18.5734 38.0946 163.815];
semilogy(ecefXgold, '*-');
hold;
semilogy(exp12ecefX, '*-');
legend('Golden Run Ecef X (mean, sigma, max)','Experimental Ecef X (mean, sigma, max)')