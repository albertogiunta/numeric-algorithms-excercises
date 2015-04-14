% Costruire con il minor numero di comandi i seguenti vettori e le seguenti matrici:

clc;
clear;

disp('%%%%%%%%%%%%%%%%%%%%%');

A = [1:1:20, 20:-1:1];

A

disp('%%%%%%%%%%%%%%%%%%%%%');

B = [0:0.1:1];

B

disp('%%%%%%%%%%%%%%%%%%%%%');

C = [100:-1:0];

C

disp('%%%%%%%%%%%%%%%%%%%%%');

D = [ones(3), [3;3;3]];

D

disp('%%%%%%%%%%%%%%%%%%%%%');

E = [eye(3).*2, [[1:1:10];[1:1:10];[1:1:10]]];

E

disp('%%%%%%%%%%%%%%%%%%%%%');

F = [ones(3).*2, ones(3).*3; zeros(3), zeros(3); zeros(3), eye(3).*5];

F

disp('%%%%%%%%%%%%%%%%%%%%%');