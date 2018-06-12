h = 0.0001;
y=zeros(1, (20-0)/h);
for t=2:20/h % y(dt) = y(0) + y'(0)*dt; y'(t) = 3 - 0.5*t(t)
    y(t) = y(t-1) + (3 - 0.5 * y(t-1) ) * h;
end
x = linspace(0, 20, (20-0)/h);
figure;
plot(x, y(1, :));xlabel('t');ylabel('y(t)');

y_ans = zeros(1, 5);
for i=1:5
    h=10^-i;
    y = 0;
    for t=2:2/h % y(dt) = y(0) + y'(0)*dt; y'(t) = 3 - 0.5*t(t)
        y_pre = y;
        y = y_pre + (3 - 0.5 * y_pre ) * h;
    end
    y_ans(i) = y;
    if(i > 1 && abs(y_ans(i) - y_ans(i - 1)) < 10^-4)
        fprintf(1, 'Problem 1: y(2) = %1.3f\n', y_ans(i));
    end
end