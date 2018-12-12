h = 0.0001;
v=zeros(1, (10-0)/h);
E = 5;
C = 20*10^-6;
R = 50*10^3;
v(1) = 0.5;
for t = 2:10/h
    v(t) = v(t - 1) + (E/(C*R) - v(t - 1)/(C*R)) * h;
end
x = linspace(0, 10, (10-0)/h);
figure;
plot(x, v(1, :));xlabel('t');ylabel('y(t)');

v_ans = zeros(1, 6);
for i=1:6
    h=10^-i;
    v = 0.5;
    for t=2:0.5/h
        v_pre = v;
        v = v_pre + (E/(C*R) - v_pre/(C*R))*h;
    end
    v_ans(i) = v;
    if(i > 1 && abs(v_ans(i) - v_ans(i - 1)) < 10^-4)
        fprintf(1, 'Problem 4: V(0.5) = %1.3f\n', v_ans(i));
    end
end

h=10^-5;
v = 0.5;
min = 100;
for t=2:10/h
    v_pre = v;
    v = v_pre + (E/(C*R) - v_pre/(C*R))*h;
    e = v - 3.5;
    if(e < min && e > 0)
        min = abs(e);
        min_x = t*h;
    end
end
fprintf(1, 'it takes %.5f seconds to charge up to 3.5V\n', min_x);