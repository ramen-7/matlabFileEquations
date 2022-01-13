clear;
clc;
format long
f =@(x) x^2-17;
g =@(x) 2*x;
N=10;
x(1)=4;
tol=10^-6;

for i=2:1:10
    x(i) =x(i-1) -f(x(i-1))/g(x(i-1))
    if(abs(x(i)-x(i-1))<=tol || abs((x(i)-x(i-1))/x(i-1))<=tol)
        fprintf('Root is %f',x(i));
    else
        fprintf('The method failed after %d iterations',N);
    end
end

