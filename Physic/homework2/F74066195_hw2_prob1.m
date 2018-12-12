h = 10^-8;
bound = [0, pi];
sum=0;
for x=bound(1)+h:h:bound(2)    %f(x)=1/sqrt(1+2sin(x))
    sum = sum + prob1_f(x) + prob1_f(x-h);
end
sum=sum*h/2;
fprintf(1, '(i) %.8f\n', sum);

h = 10^-8;
bound = [0, 2];
sum=0;
for x=bound(1)+h:h:bound(2)    %g(x)=x^2*ln(x^2+1)
    sum = sum + prob1_g(x) + prob1_g(x-h);
end
sum=sum*h/2;
fprintf(1, '(ii) %.8f\n', sum);