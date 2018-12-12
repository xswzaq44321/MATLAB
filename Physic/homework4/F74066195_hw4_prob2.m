h = 10^-6;
interval = [0, 5];
t = linspace(interval(1), interval(2), (interval(2) - interval(1))/h);
jayX = zeros(1, length(t));
jakeX = zeros(1, length(t));
jimX = zeros(1, length(t));
jayY = zeros(1, length(t));
jakeY = zeros(1, length(t));
jimY = zeros(1, length(t));
jayVX = zeros(1, length(t));
jayVY = zeros(1, length(t));
jakeVX = zeros(1, length(t));
jakeVY = zeros(1, length(t));
jimVX = zeros(1, length(t));
jimVY = zeros(1, length(t));
cmX = zeros(1, length(t));
cmY = zeros(1, length(t));
cmVX = zeros(1, length(t));
cmVY = zeros(1, length(t));

cmVX(1) = 12.8557;
cmVY(1) = 15.3208;
cmX(1) = 0.2;
for i = 2:length(t)
    ax = 0;
    cmVX(i) = cmVX(i - 1) + ax * h;
    cmX(i) = cmX(i - 1) + cmVX(i - 1) * h;
    ay = -9.8;
    cmVY(i) = cmVY(i - 1) + ay * h;
    cmY(i) = cmY(i - 1) + cmVY(i - 1) * h;
end
figure(8);
plot(cmX, cmY);

jayVX(1) = 12.8557;
jayVY(1) = 15.3208;
jayX(1) = 0.2;
for i = 2:length(t)
    if(i*h > 2 && i*h <= 2.1)
        ax = -2/0.1;
    else
        ax = 0;
    end
    jayVX(i) = jayVX(i - 1) + ax * h;
    jayX(i) = jayX(i - 1) + jayVX(i - 1) * h;
    ay = -9.8;
    jayVY(i) = jayVY(i - 1) + ay * h;
    jayY(i) = jayY(i - 1) + jayVY(i - 1) * h;
end

jakeVX(1) = 12.8557;
jakeVY(1) = 15.3208;
jakeX(1) = 0.2;
for i = 2:length(t)
    if(i*h > 2 && i*h < 2.1)
        ax = -0.5/0.1;
    else
        ax = 0;
    end
    jakeVX(i) = jakeVX(i - 1) + ax * h;
    jakeX(i) = jakeX(i - 1) + jakeVX(i - 1) * h;
    ay = -9.8;
    jakeVY(i) = jakeVY(i - 1) + ay * h;
    jakeY(i) = jakeY(i - 1) + jakeVY(i - 1) * h;
end

jimVX(1) = 12.8557;
jimVY(1) = 15.3208;
jimX(1) = 0.2;
for i = 2:length(t)
    if(i*h > 2 && i*h < 2.1)
        ax = 2.5/0.1;
    else
        ax = 0;
    end
    jimVX(i) = jimVX(i - 1) + ax * h;
    jimX(i) = jimX(i - 1) + jimVX(i - 1) * h;
    ay = -9.8;
    jimVY(i) = jimVY(i - 1) + ay * h;
    jimY(i) = jimY(i - 1) + jimVY(i - 1) * h;
end
% figure;
% plot(jayX, jayY, jakeX, jakeY, jimX, jimY);
% legend('jay', 'jake', 'jim');

min = 100;
index = 0; % since acceleration on y-axis never changes, so index could fit on each triplet
for i = 2/h:length(t)
    if(jimY(i) <= min && jimY(i) >= 0) % close to 0 but not under 0, just before landing
        min = abs(jimY(i));
        index = i;
    end
end
fprintf(1, 'distance of jim is %f\n', jimX(index));

jakeV = sqrt(jakeVX(index)^2 + jakeVY(index)^2);
fprintf(1, 'speed of jake is %f\n', jakeV);
jayV = sqrt(jayVX(index)^2 + jayVY(index)^2);
jimV = sqrt(jimVX(index)^2 + jimVY(index)^2);
totalE = 1/2*(0.1*jayV^2 + 0.1*jakeV^2 + 0.1*jimV^2);
fprintf(1, 'total kinetic energy is %f\n', totalE);