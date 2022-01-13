
clear;
clc;
g = @(x) (sqrt( 10/( 4 + x)));
tol = 0.001;
i = 1;
n = 50;
x = 1.5;
while i<=n
    x1 = g(x);
    if(abs(x1-x)<tol)
        display(x1);
        break;
    end
    x = x1;
    i = i+1;
end

if(i>=n)
    fprintf("Doesn't converge to fixed point");
else
    fprintf("No. of iterations: %f", i-1);
end
