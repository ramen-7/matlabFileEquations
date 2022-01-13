clear;
clc;
f =@(x) 2*sin(pi*x) +x;
a=1;
b=2;
x0=1;
g =@(x) (asin(x/2))/pi;

tol=10^-2;
M=20;
i=1;
while i<=M
    x1=g(x0);
    if abs(x1-x0)<=tol || abs((x1-x0)/x1)<=tol
        fprintf('The root is %f\n',x1);
        break;
       
    end;
    i=i+1;
    x0=x1;
    
end
fprintf('No. of iterations:%d',i);
