clc;
clear;
A = [10 8 -3 1; 2 10 1 -4; 3 -4 10 1; 2 2 -3 10];
B = [16; 9; 10; 11];
x0 = [0 0 0 0];
w=1.1;
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