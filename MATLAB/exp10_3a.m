clc;
clear;
format long g
h = 0.5;
f = @(t, y) t*exp(3*t)-2*y
x=0:h:2;
%calculates upto y(2)
t0 = 0;%initial value of t
y0 = 0;%initial value of y
a = 0; %lower limit
b = 1; %upper limit
N = (b-a)/h
for i=1:N
    y1 = y0+h*f(t0,y0)%euler's
    t1 = t0 + h
    y1 = y0 + (h/2)*(f(t0,y0)+f(t1,y1))%modified euler's
    disp(y1)%t1 is 0.5+1st value and t2 is rounded off to nearest 10
    %y2 = -1/t1
    %Err = abs(y1 - y2)
    %disp(Err)
    t0 = t1;
    y0 = y1;
    disp("-----------------------")
end

