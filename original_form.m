function [outputArg1, outputArg2] = original_form(a, b, c)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
tri = sqrt(b.^2-4*a*c);
outputArg1 = (-b+tri)/(2*a);
outputArg2 = (-b-tri)/(2*a);
end

