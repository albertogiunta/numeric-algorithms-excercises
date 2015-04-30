clc;
clear;

fprintf('Errore\t\t\tCond(A)\n');
A = hilb(12) + eye(12);
b = sum(A, 2);

x_real = ones(size(A, 1),1);
x_calc = risolvi_sistema(A, b);
err = norm(x_real - x_calc, 1) / norm(x_real, 1);
cond_index = norm(A, 1) * norm(inv(A), 1);
fprintf('%10.9f\t\t%e\n', err, cond_index);


fprintf('\n\nErrore\t\t\tCond(A)\n');
clear;
A = hilb(12) + eye(12);
bp = sum(A, 2);
bp(1) = bp(1) + bp(1)*0.02;

x_realp = ones(size(A, 1),1);
x_calcp = risolvi_sistema(A, bp);
errp = norm(x_realp - x_calcp, 1) / norm(x_realp, 1);
cond_indexp = norm(A, 1) * norm(inv(A), 1);
fprintf('%10.9f\t\t%e\n', errp, cond_indexp);