% Per saldare il valore di un acquisto di 40000 euro sono necessarie
% 8 rate annuali di 7000 euro.
% Qual ? l?interesse applicato?
% Ricordando la relazione matematica che lega il valore attuale p, il
% pagamento annuale A, il numero di anni n, l?interesse i,
% A = p * ...
% ricavare l?interesse che soddisfa questa relazione, con i metodi
% visti a lezione.
% Confrontare, analizzare e commentare i risultati alla luce della teoria.

clc;
clear;

f = @(x)40000 .* x .* (1+x).^8 / ((1+x).^8-1) - 7000;
f_der = @(x)(40000.*(x + 1).^8)/((x + 1).^8 - 1) + (320000.*x.*(x + 1).^7)/((x + 1).^8 - 1) - (320000.*x.*(x + 1).^15)/((x + 1).^8 - 1).^2;

interval = [0.01 0.1];
prec = 10^-5;
max_it = 50;

execute (f, f_der, interval, prec, max_it);
