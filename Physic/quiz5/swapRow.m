function [outputArg] = swapRow(inputArg, r1, r2)
temp = inputArg(r1, :);
inputArg(r1, :) = inputArg(r2, :);
inputArg(r2, :) = temp;
outputArg = inputArg;
end