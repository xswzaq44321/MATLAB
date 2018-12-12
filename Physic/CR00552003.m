function [] = CR00552003(m, n)
% CR00552003
% m := foot count ; n := head count
% c := chicken count ; b := bunny count
% 2c + 4b = m ; c + b = n ;
% 2b = m - 2n ; c = n - b ;
if(m > 4 * n)
    fprintf(1, "Error! Too many feet!\n");
    return;
elseif(m < 2 * n)
    fprintf(1, "Error! Too few feet!\n");
    return
end
b = 1/2*(m - 2*n);
c = n - b;
if(b ~= floor(b) || c ~= floor(c))
    fprintf(1, "Error! Feet count incorrect!\n");
    return
end
fprintf(1, "chicken: %d, bunny: %d\n", c, b);
end

