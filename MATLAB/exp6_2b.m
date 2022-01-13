clc; 
clear;
 x = [1; 1; 0; 1];
 A = [1 1 0 0;1 2 0 1;0 0 3 3; 0 1 2 3];
 tol = 10^-3;
 dd = 1;
 k = 10;
 while dd>tol
     y=A*x
     dd = abs(norm(y, inf)-k)
     k = norm(y, inf)
     x =y/k
 end
 vec = x
 max_eigen = k