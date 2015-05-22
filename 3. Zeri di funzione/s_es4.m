% esercizio 4
% Determinare, con ciascuno dei metodi visti a lezione, tutte le
% radici della funzione ( ) 2x^3 + 3x^2 - 120x + 10 nell?intervallo
% [-10,10], facendo uso del grafico per individuare i diversi intervalli
% di studio.

clc;
clear;

f1 = @(x)2*x.^3 + 3*x.^2 - 120*x + 10;
f1_der = @(x)6*x.^2 + 6*x - 120;

x_f1 = linspace(-10, 10, 1000);
y_f1 = feval(f1, x_f1);

hold on
grid on
plot(x_f1, y_f1);
hold off

interval = [-10 -8; -2 2; 6 8];

prec = 10^-5;
max_it = 50;

res = zeros(2, 4);

for n = 1: 3
    disp('************************************************')
    fprintf('Intervallo %d\n', n);
    disp('************************************************')
    [c, i] = bisezione(f1, interval(n, :), prec, max_it);
    disp('BISEZIONE');
    fprintf('Zero di f\t\tN Iter\n');
    fprintf('%f\t\t\t%d\n\n', c, i);    
    [c, i] = regulafalsi(f1, interval(n, :), prec, max_it);
    disp('REGULA FALSI');
    fprintf('Zero di f\t\tN Iter\n');
    fprintf('%f\t\t\t%d\n\n', c, i);
    [c, i] = secanti(f1, interval(n, :), prec, max_it);
    disp('SECANTI');
    fprintf('Zero di f\t\tN Iter\n');
    fprintf('%f\t\t\t%d\n\n', c, i);
    [c, i] = newton(f1, f1_der, interval(n, 2), prec, max_it);
    disp('NEWTON');
    fprintf('Zero di f\t\tN Iter\n');
    fprintf('%f\t\t\t%d\n\n', c, i);
end