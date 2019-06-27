a = 1;
eps = 10^-3;
s = @(a,t)(0.5*a*t.^2);
x = linspace(0,10000,1000);
e = abs((s(a,x)-s(a+eps,x)));
plot(x,e);
hold all;
legend(gca,"Position estimation error");
