% Realizzare una m-function di nome secanti che presi in input la funzione 
% effe di cui calcolare lo zero, l?iterato iniziale x0 opportunamente scelto 
% in un intorno dello zero, la precisione prec con cui calcolarlo ed il numero 
% massimo di iterazioni it, implementi il metodo delle secanti per la ricerca 
% dello zero della funzione con precisione prec.

clc;
clear;

interval = [-1, 2];
f = @(x)x^3 + 4*x^2 - 10;
f_der = @(x)3*x^2 + 8*x;
x0 = interval(2);
prec = 0.0000000001;
max_it = 50;

zero = secanti(f, x0, prec, max_it);

zero