clear;
answer = 1-sqrt(2)/2;
h = linspace(10^-1, 10^-8);
for i=1:100
    sum=0;
    for j=1:((1/2-1/4)/h(i))
        sum = sum + pi*cos(pi*(1/4+j*h(i)));
    end
    sum=sum*h(i);
    error(i) = abs(sum - answer);
end
loglog(h,error);
hold on;
for i=1:100
    sum=0;
    for j=1:((1/2-1/4)/h(i))
        sum = sum + pi*cos(pi*(1/4+j*h(i))) + pi*cos(pi*(1/4+(j - 1)*h(i)));
    end
    sum=sum*h(i)/2;
    error(i) = abs(sum - answer);
end
loglog(h, error);legend('Box', 'Trapezoid');
hold off;

for i = 1:8
    h = 10^-i;
    for j=1:((1/2-1/4)/h)
        sum = sum + pi*cos(pi*(1/4+j*h));
    end
    sum = sum*h;
    rel_error = abs(sum-answer)/answer;
    if(floor(log10(rel_error)) <= -8) % test fot significant digit
        fprintf(1, '%.8f\n', sum);
        fprintf(1, 'h = %.0e is optimal for box counting\n', h);
        break;
    end
end

for i = 1:8
    h = 10^-i;
    for j=1:((1/2-1/4)/h)
        sum = sum + pi*cos(pi*(1/4+j*h)) + pi*cos(pi*(1/4+(j - 1)*h));
    end
    sum = sum*h/2;
    rel_error = abs(sum-answer)/answer;
    if(floor(log10(rel_error)) <= -8) % test fot significant digit
        fprintf(1, '%.8f\n', sum);
        fprintf(1, 'h = %.0e is optimal for  Trapezoid method\n', h);
        break;
    end
end