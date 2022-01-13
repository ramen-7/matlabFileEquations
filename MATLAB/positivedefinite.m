clc;
clear;
A = [3 -1 1; -1 3 -1; 1 -1 3]
try chol(A)
    disp('Matrix is symmetric positive definite.')
catch ME
    disp('Matrix is not symmetric positive definite')
end