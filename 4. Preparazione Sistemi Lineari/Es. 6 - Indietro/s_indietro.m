% Realizzare una m-function che presa in input una matrice
% triangolare superiore R ed il termine noto b restituisca in output
% la soluzione del sistema Rx=b, calcolata mediante l?algoritmo di
% sostituzione all?indietro.
% x=function Backward_sostitution (R,b);

clc;
clear;

R = triu(rand(4));
b = rand(4);

backward_sostitution(R, b)