function [outputArg] = gauss_jordan_elimination(inputArg)
[m, ~] = size(inputArg);
%gauss elimination
for i=1:m
    if(inputArg(i, i) == 0)
        for j = i + 1:m
            if(inputArg(j, i) ~= 0)
                inputArg = swapRow(inputArg, i, j);
                fprintf(1, 'swap[%d, %d]\n', i, j);
                break;
            end
        end
    end
    if(inputArg(i, i) ~= 0)
        for j = i + 1:m
            a = inputArg(j, i) / inputArg(i, i);
            inputArg(j, :) = inputArg(j, :) - a * inputArg(i, :);
        end
    end
end
%jordan eliminitaion
for i=m:-1:1
    if(inputArg(i, i) ~= 0)
        for j = i - 1:-1:1
            a = inputArg(j, i) / inputArg(i, i);
            inputArg(j, :) = inputArg(j, :) - a * inputArg(i, :);
        end
    end
end
%organizing numbers
for i = 1:m
    a = inputArg(i, i);
    if(a ~= 0)
        inputArg(i, :) = inputArg(i, :) / a;
    end
end
outputArg = inputArg;
end