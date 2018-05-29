theta=pi/2 - 0.1;
h=10^-8;
error = 100;
count = 0;
while error > 10^-8
    theta_pre = theta;
    tang = (s(theta_pre + h) - s(theta_pre)) / h;
    theta = theta_pre - s(theta_pre)/tang;
    error = abs(theta - theta_pre) / theta;
    count = count + 1;
end
fprintf(1, 'angle1 = %.8f(rad)\n', theta);
fprintf(1, 'takes %d iterations\n', count);

theta=0.1;
h=10^-8;
error = 100;
count = 0;
while error > 10^-8
    theta_pre = theta;
    tang = (s(theta_pre + h) - s(theta_pre)) / h;
    theta = theta_pre - s(theta_pre)/tang;
    error = abs(theta - theta_pre) / theta;
    count = count + 1;
end
fprintf(1, 'angle2 = %.8f(rad)\n', theta);
fprintf(1, 'takes %d iterations\n', count);