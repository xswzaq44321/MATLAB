answer = 0.8820813907624217;
for j=1:7
    h = 10^-j;
    f_0 = h/3*exp(-0^2);
    sum=0;
    for i = 1:((2-0)/h-1)
        f = exp(-(0+i*h)^2);
        if(mod(i, 2) == 0)
            f = f*2*h/3;
        else
            f = f*4*h/3;
        end
        sum = sum + f;
    end
    f_2 = h/3*exp(-2^2);
    sum = sum + f_0 + f_2;
    if(abs(sum - answer) < 10*10^-8)
        fprintf(1, '%.8f\nh = %.1e is optimal for  Simpson Method\n', sum, h);
        break;
    end
end