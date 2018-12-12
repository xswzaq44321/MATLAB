% p=0.1:0.9, n=1:20
clear;

N = 7;
fprintf(1, "                                     p                                      \n");
fprintf(1, "        ____________________________________________________________________\n");
fprintf(1, " n  r   0.10    0.20    0.30    0.40    0.50    0.60    0.70    0.80    0.90\n");
fprintf(1, "____________________________________________________________________________\n");
for n = 1:N
	for i = 1:9
		p = i / 10;
		for r = 0:n
			num = 0;
			for x=0:r
				num = num + binomial(x, n, p);
			end
			data{n}(r+1, i) = num;
		end
		for r = 0:n-1
			if(round(data{n}(r+1+1, i), 4) == 0)
				% mark as -1 to not display
				data{n}(r + 1, i) = -1;
			end
		end
		for r = n:-1:1
			if(round(data{n}(r, i), 4) == 1)
				data{n}(r + 1, i) = -1;
			end
		end
	end
end
for n = 1:N
	for r=0:n
		if(r == 0)
			fprintf(1, "%2d ", n);
		else
			fprintf(1, "   ");
		end
		fprintf(1, "%2d ", r);
		for i = 1:9
			num = data{n}(r + 1, i);
			if(num == -1)
				fprintf(1, "        ");
			else
				fprintf(1, " %.4f ", num);
			end
		end
		fprintf(1, "\n");
	end
	fprintf(1, "\n");
end