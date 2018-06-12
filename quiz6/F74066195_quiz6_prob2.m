h = 0.0001;
y=zeros(1, (10-0)/h);
y(1) = 1.5;
y_1 = zeros(1, (10-0)/h);
y_1(1) = 20;
for t = 2:10/h
    y_1(t) = y_1(t - 1) - 9.8*h;
    y(t) = y(t - 1) + y_1(t - 1) * h - 9.8*h^2/2;
end
x = linspace(0, 10, (10-0)/h);
figure;
plot(x, y(1, :));xlabel('t');ylabel('y(t)');

y_ans = zeros(1, 6);
for i=1:6
    h=10^-i;
    y = 1.5;
    y_1 = 20;
    for t=2:3/h
        y_1_pre = y_1;
        y_1 = y_1_pre - 9.8*h;
        y_pre = y;
        y = y_pre + y_1_pre*h - 9.8*h^2/2;
    end
    y_ans(i) = y;
    if(i > 1 && abs(y_ans(i) - y_ans(i - 1)) < 10^-4)
        fprintf(1, 'Problem 2: y(3) = %1.3f\n', y_ans(i));
    end
end

h=10^-8;
y = 1.5;
y_1 = 20;
min = 100;
for t=2:5/h
    y_1_pre = y_1;
    y_1 = y_1_pre - 9.8*h;
    y_pre = y;
    y = y_pre + y_1_pre*h - 9.8*h^2/2;
    if(y < min && y > 0)
        min = abs(y);
        min_x = t*h;
    end
end
fprintf(1, 't = %.8f\n', min_x);