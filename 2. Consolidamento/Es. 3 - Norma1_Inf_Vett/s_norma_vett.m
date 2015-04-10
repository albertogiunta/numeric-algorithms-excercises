% Realizzare una m-function che preso in input un vettore, 
% ne restituisca la norma 1 e la norma infinito.

clc;
clear;

v = input('Inserire un vettore di tipo [...]: ');

res = norma1_inf_vett(v);
fprintf('Norma 1 = %d\tNorma Inf = %d\n', res(1), res(2));