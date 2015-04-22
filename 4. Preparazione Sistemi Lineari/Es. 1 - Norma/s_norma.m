% Realizzare una m-function
% [nor]=function norma(A,flag)
% che preso in input un vettore o una matrice A, ne calcoli, a scelta dell?utente, 
% la norma 1 o la norma infinito, in base al valore di flag. (se flag=0, 
% calcola norma infinito, se flag=1, calcola la norma 1).

clc;
clear;

v = [0 3 -5 7 9];
m = [1 2 3 4 5; 3 8 4 9 1];

uno = 1;
inf = 0;

disp('Vettore - Norma 1 - Calcolata a mano');
[nor] = norma(v, uno)

disp('Vettore - Norma Inf - Calcolata a mano');
[nor] = norma(v, inf)

disp('Matrice - Norma 1 - Calcolata a mano');
[nor] = norma(m, uno)

disp('Matrice - Norma Inf - Calcolata a mano');
[nor] = norma(m, inf)
