clc;
clear;
f = @(x) x^2*log(x); %function
a = 1 %lower limit
b = 1.5 %upper limit
n = 20 %subintervals
h = (b-a)/n;
sum = 0;
for i=1:1:n-1
    x=a+i*h;
    sum = sum + 2*f(x)
end
an = sum + f(a) + f(b);
an = (an *h)/2
disp("The value of integration is");
disp(an)