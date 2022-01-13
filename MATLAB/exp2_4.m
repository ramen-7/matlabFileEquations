clear;
clc;
f = @(t)  9*exp(-t) *sin(2*t*pi) - 3.5;
g = @(t) 18*pi*exp(-t)*cos(2*pi*t)- 9*exp(-t)*sin(2*pi*t);

M=1;
h=0.1;
for i=-M:h:M
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
        fprintf('root lies between %d and %d\n',a,b);
       
    
        
    end
end
c=(a+b)/2;
t(1)=c;
tol=10^-6;

for i=2:1:10
    t(i) =t(i-1) -f(t(i-1))/g(t(i-1));
    if(abs(t(i)-t(i-1))<=tol || abs((t(i)-t(i-1))/t(i-1))<=tol)
        fprintf('lowest value of t is  %d\n',t(i))
         
    end
end
  fprintf('STOP\n');

     
