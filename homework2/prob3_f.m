function [outputArg] = prob3_f(inputArg)
outputArg = log(inputArg^2 + 1) - exp(0.4 * inputArg) * cos(pi * inputArg);
end