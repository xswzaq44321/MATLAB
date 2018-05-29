K = 9*10^9;
Q=1;
h = 10^-4;
interval = -0.5:h:0.5;
sum=0;
for i=1:length(interval)-1
    for j=1:length(interval)-1    %f(x)=K*Q/d^2
        x = -0.5 + i*h;
        y = -0.5 + j*h;
        d2 = (x)^2 + (y)^2 + 0.5^2;
        cos_ = 0.5/sqrt(d2);
        sum = sum + (K*Q/d2)*(h)*(h)*(cos_);
    end
end
sum = sum * 6;
fprintf(1, '(1) The total flux is %.6e (Volt*m).\n', sum);

interval = -1:h:1;
sum=0;
for i=1:length(interval)-1
    for j=1:length(interval)-1    %f(x)=K*Q/d^2
        x = -1 + i*h;
        y = -1 + j*h;
        d2 = (x)^2 + (y)^2 + 1^2;
        cos_ = 1/sqrt(d2);
        sum = sum + (K*Q/d2)*(h)*(h)*(cos_);
    end
end
sum = sum * 6;
fprintf(1, '(2) The total flux is %.6e (Volt*m).\n', sum);

interval = -1:h:1;
sum1=0; %x-y z=1 plate
for i=1:length(interval)-1
    for j=1:length(interval)-1    %f(x)=K*Q/d^2
        x = -1 + i*h;
        y = -1 + j*h;
        d2 = (x-0.4)^2 + (y-0.4)^2 + (1-0.4)^2;
        cos_ = 0.6/sqrt(d2);
        sum1 = sum1 + (K*Q/d2)*(h)*(h)*(cos_);
    end
end
sum2=0; %x-y z=-1 plate
for i=1:length(interval)-1
    for j=1:length(interval)-1    %f(x)=K*Q/d^2
        x = -1 + i*h;
        y = -1 + j*h;
        d2 = (x-0.4)^2 + (y-0.4)^2 + (-1-0.4)^2;
        cos_ = 1.4/sqrt(d2);
        sum2 = sum2 + (K*Q/d2)*(h)*(h)*(cos_);
    end
end
sum = (sum1 + sum2) * 3;
fprintf(1, '(3) The total flux is %.6e (Volt*m).\n', sum);

%according to gauss's law, any electric charge outside the closed surface's
%electric flus is equal to zero
fprintf(1, '(4) The total flux is %.6e (Volt*m).\n', 0);