clc;
clear;
x = [1 1.3 1.6 1.9 2.2];
y = [0.7651977 0.6200860 0.4554022 0.2818186 0.1103623]
x0 = input("Enter a point at which to evaluate the polynomial, x = ");
n = max(size(x));
for i=1:n
    D(i,1)=y(i);
end
for j=2:n
    for i=j:n
        D(i, j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1))
    end
end
prod = 1;
sum = D(1,1);
for i=2:1:n
    disp(i)
    prod = prod*(x0-x(i-1));
    sum = sum+prod*D(i, i);
end
disp("Newtons divided difference iterated value");
disp(sum)