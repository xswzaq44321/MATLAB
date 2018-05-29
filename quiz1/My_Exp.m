function [outputArg] = My_Exp(N, x)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
format long;
outputArg = 0;
for i = 0:N
    temp = 1;
    for j = 1:i
        temp = temp * (x/j);
    end
    outputArg = outputArg + temp;
end

