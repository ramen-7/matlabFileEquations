clear;
clc;
A =[10 8 -3 1 16; 2 10 1 -4 9; 3 -4 10 1 10; 2 2 -3 10 11];
n=4;
for i=1:1:n-1
for j=i+1:1:n
    
  A(j,:)= A(j,:)-(A(j,i)/A(i,i))*A(i,:);
end
end
x(n)=A(n,n+1)/A(n,n);
for i=n-1:-1:1
    s=0;
    for j=i+1:n
        s=s+A(i,j)*x(j);
        x(i)=(A(i,n+1)-s)/A(i,i);
    end
end
x