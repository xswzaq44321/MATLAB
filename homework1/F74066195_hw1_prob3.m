t = 0:0.01:25;
m = 5;
v=-20*exp(-0.01.*t.^2).*sin(20*pi.*t+2*pi/5);
figure;
plot(t, v);xlabel('t');ylabel('V(t)');
f=(0.4.*t.*exp(-0.01.*t.^2).*sin(20*pi.*t+2*pi/5)-20*exp(-0.01.*t.^2).*cos(20.*pi.*t+2*pi/5).*20*pi)*m;
figure; % differentiate V and times m equals F
plot(t, f);xlabel('t');ylabel('F(t)');
t = 8;
f_8=(0.4.*t.*exp(-0.01.*t.^2).*sin(20*pi.*t+2*pi/5)-20*exp(-0.01.*t.^2).*cos(20.*pi.*t+2*pi/5).*20*pi)*m;
fprintf(1, '%4.2f\n', f_8);