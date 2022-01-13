clc;
clear;
h = 0.2;
f = @(t, y) y-t^2+1;
x=0:h:2;
%calculates upto y(2)
y = zeros(1, length(x));
y(1) = 0.5;
F = @(t, y) y-t^2+1;
for i=1:(length(x)-1)
    k1 = F(x(i), y(i));
    k2 = F(x(i)+0.5*h,y(i)+0.5*h*k1);
    k3 = F((x(i)+0.5*h),(y(i)+0.5*h*k2));
    k4 = F((x(i)+h),(y(i)+k3*h));
    y(i+1) = y(i) + (h/6)*(k1+2*k2+2*k3+k4);
end
y=y(:)