clear all
p0= -1.2; %initial guess
syms x;
f(x)= 2*x^3 + x^2 -x + 1;
fprime(x)= 6*x^2 + 2*x - 1;
[p] = newtonMethod(p0)