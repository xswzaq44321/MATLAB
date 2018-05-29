a=0;
b=2;
error = 100;
count = 0;
p=0;
while abs(error) > 10^-8
    p_pre = p;
    p = (a+b)/2;
    if prob4_f(p)>0
        b = p;
    else
        a = p;
    end
    count = count + 1;
    error = abs(p - p_pre)/p;
end
fprintf(1, 'The x is %.6f\n', a);