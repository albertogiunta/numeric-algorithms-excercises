% Realizzare una m-function che presa in input una matrice triangolare inferiore L 
% ed il termine noto b, restituisca in output la soluzione del sistema Lx=b, 
% calcolata mediante l?algoritmo di sostituzione in avanti.
% x=function Forward_sostitution (L,b);

clc;
clear;

L = tril(rand(4));
b = rand(4);

forward_sostitution(L, b)


