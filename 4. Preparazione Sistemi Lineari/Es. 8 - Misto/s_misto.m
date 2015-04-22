% Costruire una m-function che presa in input una matrice A di
% ordine n, il termine noto b, restituisca in output la soluzione del
% sistema Ax=b, facendo uso della fattorizzazione LU con
% pivotaggio a perno massimo per colonne e della sostituzione in
% avanti e all?indietro
% x=function risolvi_sistema(A,b);

clc;
clear;

A = [1 1 1 1; 1 2 3 4; 1 3 6 10; 1 4 10 20];
b = [4 10 20 35];

x = risolvi_sistema(A, b);

x

