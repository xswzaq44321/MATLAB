a=0;
b=1;
error = 100;
count = 0;
p=0;
while abs(error) > 10^-8
    p_pre = p;
    p = (a+b)/2;
    if prob3_f(p)>0
        b = p;
    else
        a = p;
    end
    count = count + 1;
    error = abs(p - p_pre)/p;
end
fprintf(1, 'The smallest positive root of Prob.3(a) is %.8f\n', a);

a=0;
b=-1;
error = 100;
count = 0;
p=0;
while abs(error) > 10^-8
    p_pre = p;
    p = (a+b)/2;
    if prob3_f(p)>0
        b = p;
    else
        a = p;
    end
    count = count + 1;
    error = abs(p - p_pre)/p;
end
fprintf(1, 'The largest negative root of Prob.3(a) is %.8f\n', a);

a=0;
b=1;
error = 100;
count = 0;
p=0;
while abs(error) > 10^-8
    p_pre = p;
    p = (a+b)/2;
    if prob3_g(p)>0
        b = p;
    else
        a = p;
    end
    count = count + 1;
    error = abs(p - p_pre)/p;
end
fprintf(1, 'The smallest positive root of Prob.3(b) is %.8f\n', a);

a=0;
b=-1;
error = 100;
count = 0;
p=0;
while abs(error) > 10^-8
    p_pre = p;
    p = (a+b)/2;
    if prob3_g(p)>0
        b = p;
    else
        a = p;
    end
    count = count + 1;
    error = abs(p - p_pre)/p;
end
fprintf(1, 'The largest negative root of Prob.3(b) is %.8f\n', a);