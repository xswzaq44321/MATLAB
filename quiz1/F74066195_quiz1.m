fprintf(1, '2:');
fprintf(1, '\nProb(1), The roots are:\n');
temp = -2:-2:-10;
format long;
k = 10.^temp;
for i = 1:5
    [ans1, ans2] = original_form(1, (-500-k(i)), 500*k(i));
    [ans3, ans4] = numerator_rationalized(1, (-500-k(i)), 500*k(i));
    fprintf(1, 'k = %.16e\n', k(i));
    fprintf(1, '(a-1) %.16e\n', ans1);
    fprintf(1, '(a-2) %.16e\n', ans2);
    fprintf(1, '(b-1) %.16e\n', ans3);
    fprintf(1, '(b-2) %.16e\n', ans4);
end

fprintf(1, '\nProb(2), The roots are:\n');
a = 0.0001;
b = 30.0003;
c = 90;
[ans1, ans2] = original_form(a, b, c);
[ans3, ans4] = numerator_rationalized(a, b, c);
fprintf(1, '(a-1) %.16e\n', ans1);
fprintf(1, '(a-2) %.16e\n', ans2);
fprintf(1, '(b-1) %.16e\n', ans3);
fprintf(1, '(b-2) %.16e\n', ans4);

fprintf(1, '\nProb(3), The roots are:\n');
a = 1;
b = 300003;
c = 900000;
[ans1, ans2] = original_form(a, b, c);
[ans3, ans4] = numerator_rationalized(a, b, c);
fprintf(1, '(a-1) %.16e\n', ans1);
fprintf(1, '(a-2) %.16e\n', ans2);
fprintf(1, '(b-1) %.16e\n', ans3);
fprintf(1, '(b-2) %.16e\n', ans4);

fprintf(1, '\nProb(4), The roots are:\n');
a = 1;
b = -302*10^152;
c = 6*10^306;
a = a/10^152;
b = b/10^152;
c = c/10^152;
[ans1, ans2] = original_form(a, b, c);
[ans3, ans4] = numerator_rationalized(a, b, c);
fprintf(1, '(a-1) %.16e\n', ans1);
fprintf(1, '(a-2) %.16e\n', ans2);
fprintf(1, '(b-1) %.16e\n', ans3);
fprintf(1, '(b-2) %.16e\n', ans4);

fprintf(1, '\nProb(3-1-i):\n');
N = 4;
dif = 100;
while(abs(dif) > (10^-10))
    e1 = My_Exp(N, 1);
    e2 = exp(1);
    dif = (e1*(10^(-floor(log10(e1)))) - (e2*(10^(-floor(log10(e2))))));
    N = N + 1;
end
fprintf(1, '%d\n', N);

fprintf(1, '\nProb(3-1-ii):\n');
format long;
N = 4;
dif = 100;
while(abs(dif) > (10^-10))
    e1 = My_Exp(N, -1);
    e2 = exp(-1);
    dif = (e1*(10^(-floor(log10(e1)))) - (e2*(10^(-floor(log10(e2))))));
    N = N + 1;
end
fprintf(1, '%d\n', N);

fprintf(1, '\nProb(3-2-i):\n');
N = 4;
dif = 100;
while(abs(dif) > (10^-10))
    e1 = My_Exp(N, 30);
    e2 = exp(30);
    dif = (e1*(10^(-floor(log10(e1)))) - (e2*(10^(-floor(log10(e2))))));
    N = N + 1;
end
fprintf(1, '%d\n', N);

%fprintf(1, '\nProb(3-2-ii):\n');
%N = 4;
%dif = 100;
%while(abs(dif) > (10^-10))
%    e1 = My_Exp(N, -30);
%    e2 = exp(-30);
%    dif = (e1*(10^(-floor(log10(e1)))) - (e2*(10^(-floor(log10(e2))))));
%    N = N + 1;
%end
%fprintf(1, '%d\n', N);