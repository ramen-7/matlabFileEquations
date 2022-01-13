clc
clear all
A=[pi sqrt(2) -1 1 0;
    exp(1) -1 1 2 1;
    1 1 -sqrt(3) 1 2;
    -1 -1 1 -sqrt(5) 3]

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