clc;
clear;
f = @(x) x^3 + 4*x^2 - 10;
a = 1;
b = 2;
tol = 0.001;
%bisection
count = 0;
while abs(a-b)>tol
    c = (a+b)/2;
    if f(a)*f(c)<0
        b=c;
    else
        a=c;
    end
    count = count + 1;
end
display(c);
display(count);