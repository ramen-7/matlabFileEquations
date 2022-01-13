clc;
clear;
A = [4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];
B = [-2; -1; 0; 1];
x0 = [0 0 0 0];
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