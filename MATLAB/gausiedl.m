clc;
clear;
A = [2 3 1; 3 2 2; 1 2 2]
B = [1; 1; 1];
x0 = [0 0 0];
tol = 10^-3;
k = 1;
D = diag(diag(A))
L = D-tril(A)
U = D-triu(A)
IM = ((inv(D-L))*U)
x(:, 1) = x0;
n = 0
err = 10
while(n < 5)%change the number of iterations here or use while(err > tol)
    disp(err)
    x(:,k+1) = inv(D-L)*(U)*x(:,k)+inv(D-L)*B
    err = norm(x(:,k+1) - x(:,k),inf);
    k = k+1;
    n = n+1;
end

x = x(:,k)