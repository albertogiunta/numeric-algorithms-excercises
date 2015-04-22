%Esercizio 2

clc;
clear;

f = @(t) 240000.*exp(-0.04.*t)+120000-600000./(1+59.*exp(-0.06.*t));
f_der = @(t) - 9600.*exp(-t./25) - (2124000.*exp(-(3.*t)/50))./(59.*exp(-(3.*t)/50) + 1).^2;


x_f = linspace(1, 100, 10000);
y_f = feval(f, x_f);
plot(x_f,y_f);

prec = 10^-5;
max_it = 50;
interval = [1,100];

execute( f, f_der, interval, prec, max_it );
