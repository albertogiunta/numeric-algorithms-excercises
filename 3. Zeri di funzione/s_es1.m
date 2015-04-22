% esercizio 1

clc;
clear;

f = @(x)40000 .* x .* (1+x).^8 / ((1+x).^8-1) - 7000;
f_der = @(x)(40000.*(x + 1).^8)/((x + 1).^8 - 1) + (320000.*x.*(x + 1).^7)/((x + 1).^8 - 1) - (320000.*x.*(x + 1).^15)/((x + 1).^8 - 1).^2;

interval = [0.01 0.1];
prec = 10^-5;
max_it = 50;

execute (f, f_der, interval, prec, max_it);
