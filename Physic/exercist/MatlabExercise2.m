for i = 1:3
    for j = 1:4
        for k = 1:5
            A(i, j, k) = i + j + k;
        end
    end
end
disp(A)