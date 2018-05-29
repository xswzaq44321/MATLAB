R_MsMe = 1;
Ms = 1.98892*10^30;
Me = 5.97219*10^24;
L1 = R_MsMe*(1 - (1/3 * Me/(Ms + Me))^(1/3));
L2 = R_MsMe*(1 + (1/3 * Me/(Ms + Me))^(1/3));
L3 = R_MsMe*(1 + 5/12 * Me/(Ms + Me));
fprintf(1, 'The distance ratio of L1: %.6f\n', L1);
fprintf(1, 'The distance ratio of L2: %.6f\n', L2);
fprintf(1, 'The distance ratio of L3: %.6f\n', L3);