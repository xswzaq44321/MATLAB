function [outputArg] = jacobi_method(inputArg)
[m, n] = size(inputArg);
D_inv = zeros(m, m);
R = zeros(m, m);
b = inputArg(:, n);
for i = 1:m
    D_inv(i, i) = 1/inputArg(i, i);
    R(i, :) = inputArg(i, 1:n-1);
    R(i, i) = 0;
end
T = -D_inv*R;
C = D_inv*b;
error = 100;
x = zeros(m, 1);
count = 0;
while(abs(error) > 10^-7)
    count = count + 1;
    x_pre = x;
    x = T*x + C;
    error = 0;
    for i = 1: m
        error = error + abs(x(i, 1) - x_pre(i, 1));
    end
end
% display(count);
outputArg = x;
end