x=-5:0.001:5;
K=9*10^-9;
p_1 = -K./abs(x-1); % electric potential on point at x=1
p_2 = K./abs(x+1); % electric potential on point at x=-1
y=p_1+p_2;
plot(x,y);axis([-5,5, -10^-7, 10^-7]);
xlabel('x');ylabel('V(x)');
figure;
plot(x, -p_1./(x-1) - p_2./(x+1)); %differentiate(electric potential) = electric field
axis([-5,5, -10^-7, 10^-7]);
xlabel('x');ylabel('E(x)');
% 電場公式為電位公式微分。1/|d|的微分為-1/d|d|