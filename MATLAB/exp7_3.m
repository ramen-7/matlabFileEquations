clc;
clear;
x = [0 0.25 0.5 0.75];
y = [1 1.64872 2.71828 4.4816]
x0 = 0.43
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
for i=2:n
    prod = prod*(x0-x(i-1));
    sum = sum+prod*D(i, i);
end
disp("Newtons divided difference iterated value");
disp(sum)