fprintf(1, 'Prob 1:\n');
for i = 1:10
    for j = 1:10
        A(i, j) = i * (i - j);
    end
end
display(A(:, 3));
for j = 1:10
    B(j, 1) = 3 * j;
end
C = (A')*B;
display(C);

clear;
fprintf(1, 'Prob 2:\n');
for i = 2000 : 4000
    if (mod(i,126) == 0) && (mod(i,16))
        fprintf(1, '%d ', i);
    end
end
fprintf(1, '\n');

clear;
fprintf(1, 'Prob3:\n');
x = linspace(-5, 9);
y = 3*x.^2 - 6*x + 9;
subplot(2, 2, 1);plot(x, y);
title('Prob3');xlabel('x');ylabel('f(x) = 3x^2-6x+9');

clear;
fprintf(1, 'Prob4:\n');
t = linspace(-pi, pi);
x = 3*cos(t) - 2;
y = 4 * sin(t) + 3;
subplot(2, 2, 2);plot(x, y);
title('Prob4');xlabel('x = 3cos(t) - 2');ylabel('y = 4sin(t) + 3');

clear;