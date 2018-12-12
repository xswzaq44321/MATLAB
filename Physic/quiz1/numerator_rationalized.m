function [outputArg1,outputArg2] = numerator_rationalized(a, b, c)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
tri = sqrt(b.^2-4*a*c);
outputArg1 = (4*a*c)/(2*a*(-b-tri));
outputArg2 = (4*a*c)/(2*a*(-b+tri));
end

