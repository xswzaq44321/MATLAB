z = 100;
t = 0.85;
for n = 1:z
    sum = 0;
    for i = 1:n
        sum = sum + (-1)^(i + 1)*t^(i)/i;
    end
    y(n) = sum;
end
y1 = linspace(log(1 + t), log(1+t));
x = linspace(1, z);
plot(x, y, 'b', x, y1, 'r');
xlabel('n');ylabel('y');