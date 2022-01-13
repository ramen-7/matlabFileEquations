clc;
clear;
A = [4.63 -1.21 3.22; -3.07 5.48 2.11; 1.26 3.11 4.57]
B = [2.22; -3.17; 5.11];
x0 = [0 0 0];
tol = 10^-3;
k = 1;
D = diag(diag(A))
L = D-tril(A)
U = D-triu(A)
x(:, 1) = x0;
err = 10;
while(err > tol)
    disp(err)
    x(:,k+1) = inv(D-L)*(U)*x(:,k)+inv(D-L)*B
    err = norm(x(:,k+1) - x(:,k),inf);
    k = k+1;
end

x = x(:,k)