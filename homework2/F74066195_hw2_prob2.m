K = 8.9875517873681764 * 10^9;
Q=1;

h = 10^-4;
sum=0;
for x=-0.5+h:h:0.5
    for y=-0.5+h:h:0.5    %f(x)=K*Q/d^2
        d2 = (x)^2 + (y)^2 + 0.5^2;
        cos_ = 0.5/sqrt(d2);
        d2_ = (x-h)^2 + (y-h)^2 + 0.5^2;
        cos__ = 0.5/sqrt(d2_);
        sum = sum + (K*Q/d2)*(cos_) + (K*Q/d2_)*(cos__);
    end
end
sum = sum*(h)*(h) * 6 * 1/2;
fprintf(1, '(1) The total flux is %.6e (Volt*m).\n', sum);

sum=0;
for x=-1+h:h:1
    for y=-1+h:h:1    %f(x)=K*Q/d^2
        d2 = (x)^2 + (y)^2 + 1^2;
        cos_ = 1/sqrt(d2);
        d2_ = (x-h)^2 + (y-h)^2 + 1^2;
        cos__ = 1/sqrt(d2_);
        sum = sum + (K*Q/d2)*(cos_) + (K*Q/d2_)*(cos__);
    end
end
sum = sum*(h)*(h) * 6 * 1/2;
fprintf(1, '(2) The total flux is %.6e (Volt*m).\n', sum);

sum1=0; %x-y z=1 plate
for x=-1+h:h:1
    for y=-1+h:h:1    %f(x)=K*Q/d^2
        d2 = (x-0.4)^2 + (y-0.4)^2 + (1-0.4)^2;
        cos_ = 0.6/sqrt(d2);
        d2_ = (x-h-0.4)^2 + (y-h-0.4)^2 + (1-0.4)^2;
        cos__ = 0.6/sqrt(d2_);
        sum1 = sum1 + (K*Q/d2)*(cos_) + (K*Q/d2_)*(cos__);
    end
end
sum1 = sum1*(h)*(h) * 1/2;
sum2=0; %x-y z=-1 plate
for x=-1+h:h:1
    for y=-1+h:h:1    %f(x)=K*Q/d^2
        d2 = (x-0.4)^2 + (y-0.4)^2 + (-1-0.4)^2;
        cos_ = 1.4/sqrt(d2);
        d2_ = (x-h-0.4)^2 + (y-h-0.4)^2 + (-1-0.4)^2;
        cos__ = 1.4/sqrt(d2_);
        sum2 = sum2 + (K*Q/d2)*(cos_) + (K*Q/d2_)*(cos__);
    end
end
sum2 = sum2*(h)*(h) * 1/2;
sum = (sum1 + sum2) * 3;
fprintf(1, '(3) The total flux is %.6e (Volt*m).\n', sum);

sum1=0; %x-y z=1 plate
for x=-1+h:h:1
    for y=-1+h:h:1    %f(x)=K*Q/d^2
        d2 = (x-2)^2 + (y-2)^2 + (1-2)^2;
        cos_ = -1/sqrt(d2);
        d2_ = (x-h-2)^2 + (y-h-2)^2 + (1-2)^2;
        cos__ = -1/sqrt(d2_);
        sum1 = sum1 + (K*Q/d2)*(cos_) + (K*Q/d2_)*(cos__);
    end
end
sum1 = sum1*(h)*(h)*1/2;
sum2=0; %x-y z=-1 plate
for x=-1+h:h:1
    for y=-1+h:h:1    %f(x)=K*Q/d^2
        d2 = (x-2)^2 + (y-2)^2 + (-1-2)^2;
        cos_ = 3/sqrt(d2);
        d2_ = (x-h-2)^2 + (y-h-2)^2 + (-1-2)^2;
        cos__ = 3/sqrt(d2_);
        sum2 = sum2 + (K*Q/d2)*(cos_) + (K*Q/d2_)*(cos__);
    end
end
sum2 = sum2*(h)*(h)*1/2;
sum = (sum1 + sum2) * 3;
fprintf(1, '(4) The total flux is %.6e (Volt*m).\n', sum);

% according to gauss's law, any electric charge outside the closed surface's
% electric flus is equal to zero.
% since the step length is only 10^-4, so there is some errors at (4), but
% it's pretty close to 0 in compair to others.