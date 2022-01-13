clc;
clear;
syms c
A = [1 c; c 1]
B = det(A)
C = adjoint(A)
bc = C/B
D = inv(A)
E = A*D
max(abs(eig(A)))