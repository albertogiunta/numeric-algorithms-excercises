% Realizzare una m-function di nome regula_falsi che presi in input la 
% funzione effe di cui calcolare lo zero, l?intervallo [a,b], la precisione 
% prec con cui calcolarlo ed il numero massimo di iterazioni it, implementi 
% il metodo della regula falsi per la ricerca dello zero della funzione 
% nell?intervallo [a,b] con precisione prec.

clc;
clear;

f = @(x)x^3 + 4*x^2 - 10;
interval = [-1, 2];
zero = regula_falsi(f, interval, 0.0000000000001, 500);

zero