clc;
clear;
x = [1 1.5 2.0 2.5];
y = [2.7138 4.4817 7.3891 12.1825]
x0 = 2.25
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