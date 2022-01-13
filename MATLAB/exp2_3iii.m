clear;
clc;
f =@(x) x-2*sin(x);
g =@(x) 1-2*cos(x);

M=6;
h=1;
for i=-M:h:M
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
        fprintf('root lies between %d and %d\n',a,b)
    end
end
c=(a+b)/2;
x(1)=c;
N=20;

tol=10^-6;

for i=2:1:20
    x(i) =x(i-1) -f(x(i-1))/g(x(i-1))
    if(abs(x(i)-x(i-1))<=tol || abs((x(i)-x(i-1))/x(i-1))<=tol)
        fprintf('Root is %f',x(i));
    else
        fprintf('The method failed after %d iterations',N);
    end
end


