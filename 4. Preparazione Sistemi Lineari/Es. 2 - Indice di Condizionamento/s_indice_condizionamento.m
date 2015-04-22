% Realizzare una m-function che presa in input una matrice quadrata ne calcoli 
% l?indice di condizionamento in norma p, p=1, oppure p=infinito (per il calcolo 
% dell?inversa della matrice A fare uso della function di Matlab inv(A), che 
% presa in input una matrice A ne restituisce l?inversa).
% Condizionamento=function ind_cond(A,p)

clc;
clear;

uno = 1;
inf = 0;

A = [ 1 2 3; 4 7 2; 10 30 4];

disp('Norma 1');
nroma1 = norma(A, uno) * norma(inv(A), uno)

disp('Norma Inf');
norma_inf = norma(A, inf) * norma(inv(A), inf)