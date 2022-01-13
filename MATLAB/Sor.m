clc;
clear;
A = [3 -1 1; -1 3 -1; 1 -1 3]
B = [-1; 7; -7]
x0 = [0 0 0];
w=1.25;
tol = 10^-3;
k = 1;
D = diag(diag(A))
L = D-tril(A)
U = D-triu(A)
x(:, 1) = x0;
err = 10;
while(err > tol)
    disp(err)
    x(:,k+1) = inv(D-w*L)*((1-w)*D+w*U)*x(:,k)+w*inv(D-w*L)*B
    err = norm(x(:,k+1) - x(:,k),inf);
    k = k+1;
end

x = x(:,k)