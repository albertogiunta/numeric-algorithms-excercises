clc;
clear;

A = wilk(10); %costruisco la matrice di wilkinson
n = size(A, 1);
[L, R, P] = gauss(A); %effettuo la fattorizzazione di gauss a perno massimo per colonne
spy(A);

Rp = R;

Rp(n, n) = Rp(n, n) + Rp(n, n) * 0.001; %effettuo una perturbazione su R
x = R(n,n);
x = Rp(n, n)
Ap = L * Rp; %fattorizzazioine lu con r perturbata

err = abs(A(n, n) - Ap(n, n)) / abs(A(n, n)); %stimo l'errore derivante dalla perturbazione

fprintf('Errore relativo: %1.4f\n\n', err);