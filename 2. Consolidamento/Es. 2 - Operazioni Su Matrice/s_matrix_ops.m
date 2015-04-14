clc;
clear;

A = [[1:6]; [5:10]; [9:14]; [15:20]];

dim_vect = size(A);

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

% Costruire la matrice B formata dalle colonne di A disposte in ordine
% inverso

B = A;
for i = 1: dim_vect(2)
    B(:,i) = A(:, dim_vect(2)+1 -i);
end

A
B

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

% Costruire la matrice formata dalle sole colonne pari di A

count = 1;
for i = 1: 2: dim_vect(2)
    C(:, count) = A(:, i+1);
    count = count + 1;
end

A
C

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

% Costruire la matrice formata dalle sole colonne dispari di A

count = 1;
for i = 1: 2: dim_vect(2)
    D(:, count) = A(:, i);
    count = count + 1;
end

A
D

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

% Costruire le matrici formate dalle righe 1 4 3 e dalle colonne 5 2 di A

E = [A(1,:); A(4, :); A(3, :)];

E

F(:, 1) = A(:, 5);
F(:, 2) = A(:, 2);

F

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

% Costruire il vettore formato dagli elementi diagonali a(k,k) k = 1...n

for i = 1: dim_vect(1)
    g(i) = A(i, i);
end

g