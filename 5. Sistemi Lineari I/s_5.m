clc;
clear;

A = [10 1 4 0; 1 10 5 -1; 4 5 10 7; 0 -1 7 9];
b = [15; 15; 26; 15];

fprintf('Errore\t\t\tCond(A)\n');
x_real = ones(size(A, 1),1);
x_calc = risolvi_sistema(A, b);
err = norm(x_real - x_calc, 1) / norm(x_real, 1);
cond_index = norm(A, 1) * norm(inv(A), 1);
fprintf('%10.9f\t\t%e\n', err, cond_index);


fprintf('\n\nErrore\t\t\tCond(A)\n');
bp = b;
bp(1) = bp(1) + bp(1)* 0.0001;

x_realp = ones(size(A, 1),1);
x_calcp = risolvi_sistema(A, bp);
errp = norm(x_realp - x_calcp, 1) / norm(x_realp, 1);
cond_indexp = norm(A, 1) * norm(inv(A), 1);
fprintf('%10.9f\t\t%e\n', errp, cond_indexp);