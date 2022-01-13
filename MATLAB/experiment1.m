clc;
clear;
f = @(x) x - (29)^0.5;
h = 1;
N = 10;
tol = 0.001;
%IVT
for i=-N:h:N
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
    end
end
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