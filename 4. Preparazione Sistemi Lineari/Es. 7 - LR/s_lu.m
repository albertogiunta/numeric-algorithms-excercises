% Realizzare una m-function che presa in input una matrice A
% quadrata di ordine n restituisca in output i fattori L ed R della
% fattorizzazione di Gauss di A con pivotaggio a perno massimo
% per colonne e la matrice di permutazione P
% [L,R,P]=function fatt_lu(A)

clc;
clear;

% A = rand(5);
% b = rand(5,1);

A = [1 1 1 1; 1 2 3 4; 1 3 6 10; 1 4 10 20];
b = [4 10 20 35];

[L, R, P] = fatt_lu(A)

[L, R, P] = lu(A);