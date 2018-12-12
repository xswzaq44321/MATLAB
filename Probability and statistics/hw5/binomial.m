function [outputArg] = binomial(k, n, p)
%binomial Summary of this function goes here
%   Detailed explanation goes here
outputArg = nchoosek(n, k)*p^k*(1-p)^(n-k);
end

