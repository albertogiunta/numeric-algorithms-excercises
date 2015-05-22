% Realizzare una m-function che preso in input un valore di x, 
% approssimi  l?esponenziale ex mediante  un troncamento ad N termini dello 
% sviluppo in serie di Taylor. Calcolate il valore esatto facendo uso della 
% funzione di matlab exp(x). Completate le seguenti tabelle al variare di N  
% e commentate i risultati.

% Modificare la m-function in modo tale da trattare opportunamente 
% il caso di valori negativi di x.. 

clc;
clear;

n1 = 100;
n2 = 150;
values1 = [ 20 10 -20 -30 -40 ];

% calcolo le approssimazioni in maniera grossolana
% approx_calc(n1, values1);
% approx_calc(n2, values1);

% calcolo le approssimazioni tenendo conto anche dei numeri negativi
 approx_calc_w_neg(n1, values1);
% approx_calc_w_neg(n2, values1);