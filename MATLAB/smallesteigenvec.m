 clc; 
clear;
 x = [1; 0; 0]
 b = [2 1 1; 1 2 1; 1 1 2]
 A = inv(b)
 tol = 10^-2
 dd = 1;
 k = 10;%lamda 
 n = 0;
while dd>tol
     y=A*x;
     dd = abs(norm(y, inf)-k);
     y
     k = norm(y, inf)
     x =y/k
     n = n+1;
 end
 vec = x
 max_value = k
 smallest = 1/k