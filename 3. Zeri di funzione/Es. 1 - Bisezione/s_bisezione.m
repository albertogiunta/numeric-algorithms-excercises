% Realizzare una m-function di nome bisezione che presi in input 
% la funzione effe di cui calcolare lo zero, 
% l?intervallo [a,b], 
% la precisione prec con cui calcolarlo 
% il numero massimo di iterazioni it, 
% implementi il metodo di bisezione per la ricerca dello zero della 
% funzione nell?intervallo [a,b] con precisione prec.

clc;
clear;

f = @(x)x^3 + 4*x^2 - 10;
interval = [-1, 2];
zero = bisezione(f, interval, 0.0000000000001, 100000);

zero