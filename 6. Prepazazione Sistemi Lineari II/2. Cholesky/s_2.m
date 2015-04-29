clc;
clear;

n = 7;
A = diag(9*ones(1,n)) + diag(-3*ones(1,n-1),1) + diag(-3*ones(1,n-1),-1) + diag(ones(1,n-2),2) + diag(ones(1,n-2),-2);

a = [1 2 3];
sum(a(1, 2:3).^2);

[l, flag] = cholesky(A)
[L] = chol(A, 'lower');