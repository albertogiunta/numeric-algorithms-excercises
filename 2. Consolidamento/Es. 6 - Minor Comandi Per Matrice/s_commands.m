% Costruire con il minor numero di comandi i seguenti vettori e le seguenti
% matrici:

clc;
clear;

A = [1:1:20, 20:-1:1];

B = [0:0.1:1];

C = [100:-1:0];

D = [ones(3), [3;3;3]];

E = [eye(3).*2, [[1:1:10];[1:1:10];[1:1:10]]];

F = [ones(3).*2, ones(3).*3; zeros(3), zeros(3); zeros(3), eye(3).*5];

A 
B
C
D
E
F