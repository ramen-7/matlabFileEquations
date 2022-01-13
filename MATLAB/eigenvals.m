clc;
clear;
A = [8 -6 2; -6 7 -4; 2 -4 3]
B = inv(A)
I = eye(3)
C = inv(A - 2*I)
eigenval = eig(A)
