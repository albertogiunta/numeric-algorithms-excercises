% esercizio 3

clc;
clear;

f1 = @(x)x + log(x);
f1_der = @(x)1 + 1/x;
f2 = @(x)exp(x) - x.^2 - x;
f2_der = @(x)exp(x) - 2*x - 1;

x_f1 = linspace(0.01, 10, 1000);
y_f1 = feval(f1, x_f1);

x_f2 = linspace(-10, 10, 1000);
y_f2 = feval(f2, x_f2);

figure
subplot(1, 2, 1);
title('Funzione 1');
plot(x_f1, y_f1);

subplot(1, 2, 2);
title('Funzione 2');
plot(x_f2, y_f2);


interval_f1 = [0.01, 1];
interval_f2 = [-1, 1];

prec = 10^-5;
max_it = 500;

res = zeros(2, 4);

disp('************************************************')
disp('FUNZIONE 1');
execute(f1, f1_der, interval_f1, prec, max_it);

disp('************************************************')
disp('FUNZIONE 2');
execute(f2, f2_der, interval_f2, prec, max_it);

