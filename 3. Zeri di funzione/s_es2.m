%Esercizio 2
% Determinare, con i metodi visti a lezione, il tempo t in cui le
% due popolazioni sono uguali ed i valori P (t) e P (t) s u .
% Confrontare, analizzare e commentare i risultati alla luce della
% teoria.

clc;
clear;

f1 = @(t) 240000.*exp(-0.04.*t)+120000-600000./(1+59.*exp(-0.06.*t));
f1_der = @(t) - 9600.*exp(-t./25) - (2124000.*exp(-(3.*t)/50))./(59.*exp(-(3.*t)/50) + 1).^2;

x_f = linspace(1, 100, 10000);
y_f = feval(f1, x_f);
plot(x_f,y_f);

prec = 10^-5;
max_it = 100;
interval = [1,100];

execute( f1, f1_der, interval, prec, max_it );