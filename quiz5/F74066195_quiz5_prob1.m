A = [4 1 -1 1 -2; 1 4 -1 -1 -1; -1 -1 5 1 0; 1 -1 1 3 1];
ans1 = gauss_jordan_elimination(A);
fprintf(1, 'Prob1: The answer is [%f, %f, %f, %f] using Gauss Elimination\n', ans1(1,1), ans1(2,1), ans1(3,1), ans1(4,1));
ans2= jacobi_method(A);
fprintf(1, 'Prob1: The answer is [%f, %f, %f, %f] using Jacobi Method\n', ans2(1,1), ans2(2,1), ans2(3,1), ans2(4,1));