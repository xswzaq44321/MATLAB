function [outputArg] = two_b_f(n)
%two_b_f Summary of this function goes here
%   Detailed explanation goes here
f = [0.04, 0.06, 0.07, 0.08, 0.08, 0.07, 0.07, 0.06, 0.06, 0.06, 0.06, 0.07, 0.09, 0.13];
outputArg = 0;
for i = 1:n
	num = rand(1,1);
	for j = 1: length(f)
		num = num - f(j);
		if(num < 0)
			outputArg(i) = j;
			break;
		end
	end
end
end

