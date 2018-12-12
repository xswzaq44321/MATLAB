count = 0;
num = 10^8;
for i = 1:num
    x = -10 + 20*rand();
    y = -8 + 16*rand();
    if(x^2/100 + y^2/64 <= 1)
        count = count + 1;
    end
end
fprintf(1, '%.2f\n', count/num*20*16);
fprintf(1, 'it takes %.0e points to achive 2-digit precision\n', num);