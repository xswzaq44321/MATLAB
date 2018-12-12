h = 10^-7;
sum=0;
x = h;
y = -1;
while(y < 0) % f(x) = 1/sqrt(2pi)*exp(-x^2/2)
    sum = sum + (prob4_f(x) + prob4_f(x - h)) * h * 1/2;
    x = x + h;
    y = sum - 0.35;
end
fprintf(1, 'The x is %.6f\n', x);