syms x;
y = atan(1+x^2);%function
q = inline(y);
d = sqrt(1+diff(q(x))^2);
f = inline(d);
a = 0; %lower limit
b = 2;%upper limit
n = 8; %subintervals
h = (b-a)/n;
sum = 0;
for i=1:1:n-1
    x=a+i*h;
    sum = sum + 2*f(x);
end
an = sum + f(a) + f(b);
an = (an *h)/2;
disp(n)
disp(an)