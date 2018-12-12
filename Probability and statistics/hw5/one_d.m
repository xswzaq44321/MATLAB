% u=5.5:9.5
clear;

R = 0;
fprintf(1, "                                  mu                                      \n");
fprintf(1, "     ____________________________________________________________________\n");
fprintf(1, " r   0.10    0.20    0.30    0.40    0.50    0.60    0.70    0.80    0.90\n");
fprintf(1, "_________________________________________________________________________\n");
for i = 1 : 9
	u = 5.0 + 0.5*i;
	r = 0;
	data(r + 1, i) = poisson(r, u);
	while(round(data(r + 1, i), 4) ~= 1)
		r = r + 1;
		num = 0;
		for x = 0:r
			num = num + poisson(x, u);
		end
		data(r + 1, i) = num;
		if(r > R)
			R = r;
			for j = 1:i - 1
				data(r + 1, j) = -1;
			end
		end
	end
end
for r=0:R
	fprintf(1, "%2d ", r);
	for i = 1:9
		num = data(r + 1, i);
		if(num == -1)
			fprintf(1, "        ");
		else
			fprintf(1, " %.4f ", num);
		end
	end
	fprintf(1, "\n");
end
fprintf(1, "\n");