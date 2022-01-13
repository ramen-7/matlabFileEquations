clc; 
clear;
x = [1 27 64]
y = [1 3 4]
n = size(x, 2)
p = 1.05
for (i=1:n)
    l(i)=1;
    for (j=1:n)
        if (j~=i)
            l(i)=(p-x(j))*l(i)/(x(i)-x(j));
        end
    end
end
sum=0;
for i=1:n
    sum = sum+(l(i)*y(i));
end
display(sum)