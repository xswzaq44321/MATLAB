function [outputArg] = poisson(k, lambda)
%poisson Summary of this function goes here
%   Detailed explanation goes here
res = 1;
for i = 1:k
    res = res*(lambda/i);
end
outputArg = exp(-lambda)*res;
end