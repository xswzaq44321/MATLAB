x = 1:14;
f = [0.04, 0.06, 0.07, 0.08, 0.08, 0.07, 0.07, 0.06, 0.06, 0.06, 0.06, 0.07, 0.09, 0.13];
n = 10^4;
bar = two_b_f(n);
fp = zeros(1, 14);
for i = 1:length(bar)
	fp(bar(i)) = fp(bar(i)) + 1;
end
fp = fp ./ n;
plot(x, f, x, fp);