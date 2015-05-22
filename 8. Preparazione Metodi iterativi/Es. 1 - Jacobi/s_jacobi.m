clc;
clear;

% A = [10 -1 2 0; -1 11 -1 3; 2 -1 10 -1; 0 3 -1 8];
% b = [6; 25; -11; 15];

A = [-5 2 0; -1 3 1; 0 -2 4];
b = [-3; 3; 2];

x0 = ones(size(A, 1), 1)*2;
maxiters = 100;
prec = 10^-5;

[x, err, k, rho] = jacobi(A, b, x0, maxiters, prec)