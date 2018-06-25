h = 10^-6;
interval = [0, 30];
l = 0.5;
B = 1;
m = 0.5;
R = 1;
V=zeros(1, ((interval(2)-interval(1))/h));
V(1) = 0;
for i = 2:(interval(2)-interval(1))/h
    V_ = 9.8-(l^2*B^2/(m*R))*V(i - 1);
    V(i) = V(i - 1) + V_ * h;
end
t = linspace(interval(1), interval(2), (interval(2)-interval(1))/h);
figure;
plot(t, V);

fprintf(1, 'Problem 3: The terminal speed is %1.3f m/s\n', V(interval(2)/h));