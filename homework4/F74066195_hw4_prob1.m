Ms = 2*10^30;
Me = 6*10^24;
r0 = 1.5*10^11;
G = 6.67408*10^-11;
Ve = sqrt(G * Ms / r0);
fprintf(1, 'Initial speed is %.4f\n', Ve);

h = 10;
year = 31536000; % the data looks just like earth and sun, so... just use earth's data
interval = [0, year * 2];
t = linspace(interval(1), interval(2), interval(2) / h);
x = zeros(1, length(t));
x_ = zeros(1, length(t));
y = zeros(1, length(t));
y_ = zeros(1, length(t));
x(1) = r0;
y_(1) = Ve;
for i = 2:length(t)
    x_2 = -G * Ms / (r0 * r0) * x(i - 1) / r0;
    x_(i) = x_(i - 1) + x_2 * h;
    x(i) = x(i - 1) + x_(i - 1) * h;
    y_2 = -G * Ms / (r0 * r0) * y(i - 1) / r0;
    y_(i) = y_(i - 1) + y_2 * h;
    y(i) = y(i - 1) + y_(i - 1) * h;
end
figure(1);
plot(x, y); xlabel('x'); ylabel('y'); axis equal;
figure(2);
plot(t, x); xlabel('t'); ylabel('x');
figure(3);
plot(t, y); xlabel('t'); ylabel('y');

T = 0;
min = x(1) + 100;
for i = 1:length(t)
    if(x(i) < min)
        min = x(i);
        T = (i - 1)*h*2;
    elseif(x(i) > min) % if x starts to concave upward, that means the minimum has been found
        break;
    end
end
fprintf(1, 'Period is %1.2e\n', T);

x = zeros(1, length(t));
x_ = zeros(1, length(t));
y = zeros(1, length(t));
y_ = zeros(1, length(t));
x(1) = r0;
y_(1) = 0.7*Ve;
for i = 2:length(t)
    r0 = sqrt(x(i - 1)^2 + y(i - 1)^2);
    x_2 = -G * Ms / (r0 * r0) * x(i - 1) / r0;
    x_(i) = x_(i - 1) + x_2 * h;
    x(i) = x(i - 1) + x_(i - 1) * h;
    y_2 = -G * Ms / (r0 * r0) * y(i - 1) / r0;
    y_(i) = y_(i - 1) + y_2 * h;
    y(i) = y(i - 1) + y_(i - 1) * h;
end
figure(4);
plot(x, y); xlabel('x'); ylabel('y'); axis equal;
figure(5);
plot(t, x); xlabel('t'); ylabel('x');
figure(6);
plot(t, y); xlabel('t'); ylabel('y');

max = 0;
min = 0;
for i = 1:length(t)
    if(max < y(i))
        max = y(i);
    end
    if(min > y(i))
        min = y(i);
    end
end
SmA = (abs(max) + abs(min))/2;
max = 0;
min = 0;
for i = 1:length(t)
    if(max < x(i))
        max = x(i);
    end
    if(min > x(i))
        min = x(i);
    end
end
SMA = (abs(max) + abs(min))/2;
fprintf(1, 'semi major axis is %1.1e\n', SMA);

T = 0;
min = x(1);
for i = 1:length(t)
    if(x(i) < min)
        min = x(i);
        T = (i - 1)*h*2;
    elseif(x(i) > min) % if x starts to concave upward, that means the minimum has been found
        break;
    end
end
fprintf(1, 'Period is %1.2e\n', T);

T_ = zeros(1, 4);
SMA_ = zeros(1, 4);
for k = 1:4
    x = zeros(1, length(t));
    x_ = zeros(1, length(t));
    y = zeros(1, length(t));
    y_ = zeros(1, length(t));
    x(1) = r0;
    y_(1) = Ve * ((k+1)/5);
    for i = 2:length(t)
        r0 = sqrt(x(i - 1)^2 + y(i - 1)^2);
        x_2 = -G * Ms / (r0 * r0) * x(i - 1) / r0;
        x_(i) = x_(i - 1) + x_2 * h;
        x(i) = x(i - 1) + x_(i - 1) * h;
        y_2 = -G * Ms / (r0 * r0) * y(i - 1) / r0;
        y_(i) = y_(i - 1) + y_2 * h;
        y(i) = y(i - 1) + y_(i - 1) * h;
    end
    
    max = 0;
    min = 0;
    for i = 1:length(t)
        if(max < x(i))
            max = x(i);
        end
        if(min > x(i))
            min = x(i);
        end
    end
    SMA_(k) = (abs(max) + abs(min))/2;
    
    T_(k) = 0;
    min = x(1) + 100;
    for i = 1:length(t)
        if(x(i) < min)
            min = x(i);
            T_(k) = (i - 1)*h*2;
        elseif(x(i) > min) % if x starts to concave upward, that means the minimum has been found
            break;
        end
    end
end
figure(7);
for i = 1:4
    plot(T_(i)^2, SMA_(i)^3, '-o');
    hold on;
end
xlabel('T^2');ylabel('R^3');
hold off;