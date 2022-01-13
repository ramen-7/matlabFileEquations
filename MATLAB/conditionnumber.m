clc;
clear;
A = [5 0 0; 0 3 0; 0 0 1]
B = inv(A)
I = eye(3)
%C = inv(A - 2*I)
%eigenvals = eig(C)
norm1 = norm(A,inf)
norm2 = norm(B,inf)
k = norm1*norm2
