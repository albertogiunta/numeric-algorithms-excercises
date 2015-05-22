clc;
clear;

A = [3 0 4; 7 4 3; -1 -1 -2];

B = [5 0 -1 2; -2 4 1 0; 0 -1 4 -1; 2 0 0 3];

n = 6;
C = zeros(n) + diag(ones(n,1)*3) + diag(ones(n-1, 1)*-1, -1) + diag(ones(n-1, 1)*-1, 1);
C(1, 6) = -1;
C(2, 5) = -1;
C(5, 2) = -1;
C(6, 1) = -1;

n = 10;
D = zeros(n) + diag(ones(n,1)*4) + diag(ones(n-1, 1)*-1, -1) + diag(ones(n-1, 1)*-1, 1);

n = 10;
E = zeros(n) + diag(ones(n,1)*2) + diag(ones(n-1, 1)*-1, -1) + diag(ones(n-1, 1)*-1, 1);

n = 5;
F = gallery('poisson', n);

n = 10;
G = gallery('poisson', n);

n = 50;
H = gallery('poisson', n);

n = 100;
I = gallery('poisson', n);

matrix = input('Inserire la matrice tra [A B C D E F G H I]:   ');

matrix

b = sum(matrix, 2);
x0 = zeros(size(matrix,1), 1);
maxiters = 3000;
prec = 10^-5;

[xG, errG, rhoG, iterG] = gauss_seidel(matrix, b, x0, maxiters, prec);
[xJ, errJ, rhoJ, iterJ] = jacobi(matrix, b, x0, maxiters, prec);

fprintf('METODO\t\t\t\tRHO\t\t\t\t\tITERAZIONI\n');
if (rhoJ >= 1)
    fprintf('JACOBI\t\t\t\t%f\t\t\tRho >= 1\n', rhoJ);
else
    fprintf('JACOBI\t\t\t\t%f\t\t\t%d\n', rhoJ, iterJ);
end

if (rhoG >= 1)
    fprintf('GAUSS_SEIDEL\t\t\t\t%f\t\t\tRho >= 1\n', rhoG);
else
    fprintf('GAUSS_SEIDEL\t\t%f\t\t\t%d\n', rhoG, iterG);
end

semilogy(errG, 'r');
hold on
semilogy(errJ, 'b');
legend('GAUSS SEIDEL', 'JACOBI');
