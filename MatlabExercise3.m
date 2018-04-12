A = uint16([1 2 3; 4 5 6; 7 8 9])
B = double([1.1 2.2 3.3; 4.4 5.5 6.6; 7.7 8.8 9.9])

for i = 1:3
    for j = 1:3
        C = B(i, j) + double(A(i, j));
    end
end
C