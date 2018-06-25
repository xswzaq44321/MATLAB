h = 10^-6;
interval = [0, 0.01];
L = 2*10^-3;
R = 8;
C = 5*10^-6;
I=zeros(1, ((interval(2)-interval(1))/h));
I(1) = 0;
I_ = zeros(1, (interval(2)-interval(1))/h);
I_(1) = 1/L;
for i = 2:(interval(2)-interval(1))/h
    a = (1/L)*(-6000*sin(6000*(i - 1)*h) - R*I_(i - 1) - (1/C)*I(i - 1));
    I_(i) = I_(i - 1) + a * h;
    I(i) = I(i - 1) + I_(i - 1) * h;
end
t = linspace(interval(1), interval(2), (interval(2)-interval(1))/h);
Vr = R*I;
Vs = cos(6000*t);
figure;
plot(t, Vr, t, Vs);

I=zeros(1, ((interval(2)-interval(1))/h));
I(1) = 0;
I_ = zeros(1, (interval(2)-interval(1))/h);
I_(1) = 1/L;
for i = 2:(interval(2)-interval(1))/h
    a = (1/L)*(-10000*sin(10000*(i - 1)*h) - R*I_(i - 1) - (1/C)*I(i - 1));
    I_(i) = I_(i - 1) + a * h;
    I(i) = I(i - 1) + I_(i - 1) * h;
end
t = linspace(interval(1), interval(2), (interval(2)-interval(1))/h);
Vr = R*I;
Vs = cos(10000*t);
figure;
plot(t, Vr, t, Vs);

I=zeros(1, ((interval(2)-interval(1))/h));
I(1) = 0;
I_ = zeros(1, (interval(2)-interval(1))/h);
I_(1) = 1/L;
for i = 2:(interval(2)-interval(1))/h
    a = (1/L)*(-20000*sin(20000*(i - 1)*h) - R*I_(i - 1) - (1/C)*I(i - 1));
    I_(i) = I_(i - 1) + a * h;
    I(i) = I(i - 1) + I_(i - 1) * h;
end
t = linspace(interval(1), interval(2), (interval(2)-interval(1))/h);
Vr = R*I;
Vs = cos(20000*t);
figure;
plot(t, Vr, t, Vs);