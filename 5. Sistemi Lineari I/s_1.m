clc;
clear;

A = wilk(10);
n = size(A, 1);
[L, R, P] = gauss(A);
spy(A);

Rp = R;

Rp(n, n) = Rp(n, n) + Rp(n, n) * 0.001;
x = R(n,n)
x = Rp(n, n)
Ap = L * Rp;

err = abs(A(n, n) - Ap(n, n)) / abs(A(n, n));

fprintf('Errore relativo: %1.4f\n\n', err);