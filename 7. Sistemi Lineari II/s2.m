clc;
clear;

n = 1500;

A = rand(n);
B = A' * A;

tic
[ l ] = cholesky(B);

b = sum(B, 2);

y = l \ b;

x = l' \ y;
t1 = toc;

tic
[ l ] = chol(B, 'lower');

b = sum(B, 2);

y = l \ b;

x = l' \ y;
t2 = toc;

tic
[L, R] = lu(B);

y2 = L \ b;

x2 = R \ y2;
t3 = toc;

fprintf('Metodo usato\t\tTempo impiegato\n');
fprintf('Cholesky\t\t\t%f\n', t1);
fprintf('Chol    \t\t\t%f\n', t2);
fprintf('LU      \t\t\t%f\n', t3);
