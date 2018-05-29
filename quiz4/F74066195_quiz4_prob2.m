p=1;
h=10^-8;
error = 100;
count = 0;
while error > 10^-8
    p_pre = p;
    tang = (g(p_pre + h) - g(p_pre)) / h;
    p = p_pre - g(p_pre)/tang;
    error = abs(p - p_pre) / p;
    count = count + 1;
end
fprintf(1, '%.8f\n', p);
fprintf(1, 'takes %d iterations\n', count);