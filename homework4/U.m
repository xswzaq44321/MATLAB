function [outputArg] = U(inputArg)
e = 1.66*10^-21;
sigma = 3.4*10^-10;
outputArg = 4*e*(12/sigma*(sigma/inputArg)^13 - 6/sigma*(sigma/inputArg)^7);
end

