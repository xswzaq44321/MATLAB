h = 10^-6;
M = 1.2 * 10^3;
K = 58 * 10^3;
beta = 4 * 10^3;
x=zeros(1, (5-0)/h);
x(1) = -20;
v = zeros(1, (5-0)/h);
v(1) = 0;
for t = 2:5/h
    a = (-K*x(t - 1) - beta*v(t - 1))/M;
    v(t) = v(t - 1) + a * h;
    x(t) = x(t - 1) + v(t - 1) * h;
end
t = linspace(0, 5, (5-0)/h);
figure;
plot(t, x(1, :));xlabel('t');ylabel('x(t)');
min = 100;
whereI = 0;
for i = 1:5/h
    if(min > x(i))
        min = x(i);
        whereI = i;
    end
end
f = 1/(2*abs(0-(whereI - 1)*h));
fprintf(1, 'Problem 2: The oscillation frequency is%1.3f Hz\n', f);