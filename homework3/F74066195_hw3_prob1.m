A = [54 -24 -12 0; -24 36 -6 0; -12 -6 18 15]; % [I2 I4 IE V]
ans = gauss_jordan_elimination(A);
I5 = ans(2, 4) - ans(1, 4); % I5 = I4 - I2
fprintf(1, 'Problem 1: I5 = %1.3f A\n', I5);