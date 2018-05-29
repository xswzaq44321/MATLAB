h = 10^-7;
interval = 0:h:pi;
sum=0;
for j=1:length(interval)    %f(x)=1/sqrt(1+2sin(x))
    x = j*h;
    x_ = (j-1)*h;
    sum = sum + prob1_f(x) + prob1_f(x_);
end
sum=sum*h/2;
fprintf(1, '(i) %.8f\n', sum);

h = 10^-7;
interval = 0:h:2;
sum=0;
for j=1:length(interval)    %g(x)=x^2*ln(x^2+1)
    x = j * h;
    x_ = (j - 1) * h;
    sum = sum + prob1_g(x) + prob1_g(x_);
end
sum=sum*h/2;
fprintf(1, '(ii) %.8f\n', sum);