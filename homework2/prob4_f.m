function [outputArg] = prob4_f(inputArg)
h = 10^-6;
interval = 0:h:inputArg;
sum=0;
for j=1:length(interval)    %f(x)=1/sqrt(2pi)*exp(-x^2/2)
    x = j * h;
    x_1 = (j - 1) * h;
    sum = sum + 1/sqrt(2*pi)*exp(-x^2/2) + 1/sqrt(2*pi)*exp(-x_1^2/2);
end
sum=sum*h/2;
outputArg = sum - 0.35;
end

