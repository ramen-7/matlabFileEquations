clear;
clc;
format long
f =@(x)  (exp(-x)*(x^2+ 5*x + 2))+ 1 
g=@(x) -1*exp(-x)*(x^2+5*x+2)+exp(-x)*(2*x+5)
N=20;
x(1)=-1;
tol=10^-6;

for i=2:1:20
    x(i) =x(i-1) -f(x(i-1))/g(x(i-1))
    if(abs(x(i)-x(i-1))<=tol || abs((x(i)-x(i-1))/x(i-1))<=tol)
        fprintf('Root is %f',x(i));
    else
        fprintf('The method failed after %d iterations',N);
    end
end

