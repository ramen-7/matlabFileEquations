 clc; 
clear;
 x = [1; 0; 0]
 A = [1 -1 0; -2 4 -2;0 -1 2]
 tol = 10^-2
 dd = 1;
 k = 10;%lamda 
 while dd>tol
     y=A*x;
     dd = abs(norm(y, inf)-k);
     %y
     k = norm(y, inf)
     x =y/k
 end
 vec = x
 max_value = k