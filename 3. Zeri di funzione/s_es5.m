% esercizio 4

clc;
clear;

f = @(x)sin(x) - 0.5;
f_der = @(x)cos(x);

x_f = linspace(-10, 10, 1000);
y_f = feval(f, x_f);

plot(x_f, y_f);

interval = [(-pi/2) (pi/2)];

prec = 10^-5;
max_it = 50;

if (feval(f, interval(1)) * feval(f, interval(2))) > 0
        disp('La funzione non rispetta il teorema degli zeri --> Impossibile usare il metodo della Bisezione');
        disp(' ');
        return
end

[c, i] = bisezione(f, interval(), prec, 3);
disp('BISEZIONE');
fprintf('Zero di f\t\tN Iter\n');
fprintf('%f\t\t\t%d\n\n', c, i);

[c, i] = newton(f, f_der, c, prec, max_it);
disp('NEWTON');
fprintf('Zero di f\t\tN Iter\n');
fprintf('%f\t\t\t%d\n\n', c, i);    