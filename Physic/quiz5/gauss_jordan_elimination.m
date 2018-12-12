function [outputArg] = gauss_jordan_elimination(inputArg)
[m, n] = size(inputArg);
%gauss elimination
for i=1:m
    if(inputArg(i, i) == 0)
        found = 0;
        for j = i + 1:m
            if(inputArg(j, i) ~= 0) % guaranteed to not fall into inf loop
                inputArg = swapRow(inputArg, i, j);
                found = 1;
%                 fprintf(1, 'initiate swap process, swap[%d %d]\n', i, j);
                break;
            end
        end
        if(~found)
            continue;
        end
    end
    for j = i + 1:m
        a = inputArg(j, i) / inputArg(i, i);
        for k = i:n
            inputArg(j, k) = inputArg(j, k) - a * inputArg(i, k);
        end
    end
end
%jordan eliminitaion
for i=m:-1:1
    for j = i - 1:-1:1
        a = inputArg(j, i) / inputArg(i, i);
        for k = i:n
            inputArg(j, k) = inputArg(j, k) - a * inputArg(i, k);
        end
    end
end
%organizing numbers
for i = 1:m
    a = inputArg(i, i);
    if(a == 0)
        continue;
    end
    inputArg(i, i) = inputArg(i, i) / a;
    inputArg(i, n) = inputArg(i, n) / a;
end
outputArg = inputArg(:, n);
end