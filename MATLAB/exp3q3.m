clc;
clear;
f =@(x) tan(x) -4*x;
N=1.5;
h=0.001;
for i=0.1:h:N
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
        fprintf('root lies between %d and %d\n',a,b)
    end
end
x0=(a+b)/2;
g =@(x) atan(4*x);
M=20;
tol=10^-3;
i=1;
while i<=M
    x1=g(x0);
    if abs(x1-x0)<=tol || abs((x1-x0)/x1)<=tol
        fprintf('The first root is %f\n',x1);
        break;
       
    end;
    i=i+1;
    x0=x1;
    
end
fprintf('No. of iterations:%d\n',i);
j=1;
while j<=M
    x2=g(x1);
    if abs(x2-x1)<=tol || abs((x2-x1)/x2)<=tol
        fprintf('The second root is %f\n',x2);
        break;
       
    end;
    j=j+1;
    x1=x2;
    
end
fprintf('No. of iterations:%d',j);





