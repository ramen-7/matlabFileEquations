clc;
clear;
h = 0.2;
f = @(t, y) sqrt(2+y);
x=0:h:2;
%calculates upto y(2)
t0 = 0;%initial value of t
y0 = 0.8;%initial value of y
a = 0; %lower limit
b = 1; %upper limit
N = (b-a)/h;
y = zeros(1, length(x));
for i=1:N
    k1 = h*f(t0, y0);
    k2 = h*f((t0 + h/2),(y0 + k1/2));
    k3 = h*f((t0 + h/2),(y0 + k2/2));
    k4 = h*f((t0 + h), (y0 + k3));
    y1 = y0 + (1/6)*(k1+2*k2+2*k3+k4);
    disp(y1)
    t0=t0+h;
    y0=y1;
end

