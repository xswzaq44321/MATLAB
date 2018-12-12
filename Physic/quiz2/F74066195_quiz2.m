%1
x = -5:0.01:5;
y_0 = cosh(2*x);
plot(x, y_0);

figure;%2
h = [0.1, 0.01, 0.001, 0.0001];
y_1 = (cosh(2 * x + 2*h(1)) - cosh(2 * x))/h(1);
y_2 = (cosh(2 * x + 2*h(2)) - cosh(2 * x))/h(2);
y_3 = (cosh(2 * x + 2*h(3)) - cosh(2 * x))/h(3);
y_4 = (cosh(2 * x + 2*h(4)) - cosh(2 * x))/h(4);
plot(x, y_1, x, y_2, x, y_3, x, y_4, x, 2*sinh(2*x));legend('h = 0.1', 'h = 0.01', 'h = 0.001', 'h = 0.0001', 'd/dx');

figure;%3
for i=1:4
    h = (0.1)^i;
    y_1 = abs(2*sinh(2*x) - (cosh(2*x + 2*h)-cosh(2*x))/h);
    semilogy(x, y_1);
    hold on;
end
legend('h = 0.1','h = 0.01','h = 0.001','h = 0.0001');
hold off;

figure;%4
h = [0.1, 0.01, 0.001, 0.0001];
y_1 = (cosh(2 * x + 2*h(1)) - cosh(2 * x - 2*h(1)))/(2*h(1));
y_2 = (cosh(2 * x + 2*h(2)) - cosh(2 * x - 2*h(2)))/(2*h(2));
y_3 = (cosh(2 * x + 2*h(3)) - cosh(2 * x - 2*h(3)))/(2*h(3));
y_4 = (cosh(2 * x + 2*h(4)) - cosh(2 * x - 2*h(4)))/(2*h(4));
plot(x, y_1, x, y_2, x, y_3, x, y_4);legend('h = 0.1', 'h = 0.01', 'h = 0.001', 'h = 0.0001');

figure;%5
for i=1:4
    h = (0.1)^i;
    y_1 = abs(2*sinh(2*x) - (cosh(2*x + 2*h)-cosh(2*x - 2*h))/(2*h));
    semilogy(x, y_1);
    hold on;
end
legend('h = 0.1','h = 0.01','h = 0.001','h = 0.0001');
hold off;

figure;%6
h_1 = linspace(2^-1, 2^-50, 1000);
y_1 = abs((sech(2)).^2 - ((tanh(2 + h_1) - tanh(2))./(2.*h_1)));
plot(h_1, y_1);
min = 100;
h_ans = 0;
for i = 1:1000
    err = y_1(i)/sech(2)^2;
    if(err < min)
        min = err;
        h_ans = i;
    end
end
display(min);
display(h_ans);

figure;%7
h_1 = linspace(2^-1, 2^-50, 1000);
y_1 = abs((sech(2)).^2 - ((tanh(2 + h_1) - tanh(2 - h_1))./(2.*h_1)));
plot(h_1, y_1);
min = 100;
h_ans = 0;
for i = 1:1000
    err = y_1(i)/sech(2)^2;
    if(err < min)
        min = err;
        h_ans = i;
    end
end
display(min);
display(h_ans);
