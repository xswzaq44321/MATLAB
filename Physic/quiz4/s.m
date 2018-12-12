function [outputArg1] = s(theta)
% v_x = Vcos(theta)
% v_y = Vsin(theta)
% t = 6.5/v_x
% 2.3 + v_y*t - 1/2*g*t^2 = 3.05
% the problem could be rewritten as find root of the following equations
% 6.5*tan(theta) - 1/2*g*(6.5^2/V^2)*(sec^2(theta) - 0.75 = 0
outputArg1 = 6.5*tan(theta) - (1/2)*(9.8)*(6.5^2 / 8.7^2)*(sec(theta)^2) - 0.75;
end

