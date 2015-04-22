% Realizzare una m-function di nome newton che presi in input la funzione effe 
% di cui calcolare lo zero, la sua derivata prima, l?iterato iniziale x0 
% opportunamente scelto in un intorno dello zero, la precisione prec con cui 
% calcolarlo ed il numero massimo di iterazioni it, implementi il metodo di 
% Newton per la ricerca dello zero della funzione con precisione prec.
% Nel caso in cui il calcolo della derivata prima sia difficile da calcolare 
% passare alla function newton piuttosto che la derivata prima, un flag=?Noderivata? 
% e richiamare quindi il metodo delle secanti.

clc;
clear;

interval = [-1, 2];
f = @(x)x^3 + 4*x^2 - 10;
f_der = @(x)3*x^2 + 8*x;
x0 = interval(2);
prec = 0.000000000000001;
max_it = 50;

zero = newton(f, f_der, x0, prec, max_it, '');

zero