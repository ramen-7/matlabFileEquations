clc;
clear;
h = 0.2;
f = @(t, y) (cos(y))^2;
x=0:h:2;
%calculates upto y(2)
t0 = 0;%initial value of t
y0 = 0;%initial value of y
a = 0; %lower limit
b = 1; %upper limit
N = (b-a)/h;
for i=1:N
    y1 = y0+h*f(t0,y0);%euler's
    t1 = t0 + h;
    y1 = y0 + (h/2)*(f(t0,y0)+f(t1,y1));%modified euler's
    disp(y1)
    t0 = t1;
    y0 = y1;
end
