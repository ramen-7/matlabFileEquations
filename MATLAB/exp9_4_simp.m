
syms x;
y = atan(1+x^2);%function
q = inline(y);
d = sqrt(1+diff(q(x))^2);
f = inline(d);
a = 0; %lower limit
b = 2;%upper limit
N = 8;
h = b-a/N;
sum = 0;
for i=1:N
    x = a + h*i;
    if (rem(i, 2) == 0)
        sum = sum + 2 *f(x);
    else
        sum = sum + 4 * f(x);
    end
end
sum = sum + f(a) + f(b);
an = (sum * h)/2;
N
an 