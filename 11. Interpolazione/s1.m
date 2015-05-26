clear;
clc;

m = 1000;
% n = [3 5 10 15];
n = 5;

x_scelta = input('Usare x equidistanti (1) o chebishev (2)? ');
if x_scelta == 1
    x = linspace(-1, 1, n);
elseif x_scelta == 2
    x = zeros(n, 1);
    for i = 0: n-1 
        x(i+1) = cos((1 + 2 * i) / (2 * (n)) * pi);
    end
end

f1 = @(x) 1 ./ (1 + 25 * x.^2);
f2 = @(x) abs(x);

f_scelta = input('Usare la funzione [1 ./ (1 + 25 * x.^2)] (1) o [abs(x)] (2)? ');
if f_scelta == 1
    f=f1;
elseif f_scelta == 2
    f=f2;
end
y = feval(f, x);
m = 1000;
d = differenze_div(x, y);
interval = linspace(-1, 1, m);

lag = zeros(length(interval), 1);
err_lag = zeros(length(interval), 1);

new = zeros(length(interval), 1);
err_new = zeros(length(interval), 1);
for i = 1: length(interval)
    tic
    lag(i) = lagrange(x, y, interval(i));
    t_lag = toc;
    tic
    new(i) = newton_interp(interval(i), x, d);
    t_new = toc;
    err_lag(i) = abs(lag(i) - feval(f,interval(i)));
    err_new(i) = abs(new(i) - feval(f,interval(i)));
end

spl = spline(x, y, interval);

subplot(1, 2, 1);
plot(interval, new, 'b');
hold on
plot(interval, lag, 'r');
hold on
plot(interval, feval(f, interval), 'g');
hold on
plot(interval, spl, 'k');
hold on
plot(x, y, 'ro');
title('Grafici dei due polinomi interpolatori');
legend('Newton', 'Lagrange', 'Funzione reale', 'Spline');
hold off

subplot(1, 2, 2);
plot(interval, err_new, 'b');
hold on
plot(interval, err_lag, 'r');
title('Errore assoluto tra il polinomio interpolatore e la f scelta');
legend('Errore Newton', 'Errore Lagrange');
hold off

fprintf('Tempo Lagrange: %e\n', t_lag);
fprintf('Tempo Newton: %e\n', t_new);