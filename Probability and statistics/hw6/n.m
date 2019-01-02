function [outputArg] = n(x, y, mux,sdx, muy,sdy, rho)
	for i = 1: length(x)
		for j = 1: length(y)
			z = (x(i) - mux)^2/(sdx^2) + (y(j) - muy)^2/(sdy^2) - 2*rho*(x(i) - mux)*(y(j) - muy)/(sdx*sdy);
			outputArg(i, j) = 1/(2*pi*sdx*sdy*sqrt(1-rho^2))*exp(-z/(2*(1-rho^2)));
		end
	end
end

