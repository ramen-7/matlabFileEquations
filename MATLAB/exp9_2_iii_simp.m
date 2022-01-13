clear;
clc;
f = @(x) exp(-x^2)*cos(x); %function
a = 1 %lower limit
b = -1 %upper limit
N = 20;
h = b-a/N;
sum = 0;
for i=1:N
    x = a + h*i
    if (rem(i, 2) == 0)
        sum = sum + 2 *f(x)
    else
        sum = sum + 4 * f(x)
    end
end
sum = sum + f(a) + f(b)
an = (sum * h)/2
an 