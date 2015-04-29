clc;
clear;

% http://www.dm.unibo.it/~beccari/sislin_sparse.pdf
% http://campus.unibo.it/184208/1/Sistemi%20lineari%20-%20Metodi%20Diretti.pdf

n = 10;
a = [ 1 4 3 3 ];
b = [ 3 2 1 ];
c = [ 4 1 4];
t = [ 5 8 9 4 ];

[x] = tridiag_gauss(a, b, c, t)