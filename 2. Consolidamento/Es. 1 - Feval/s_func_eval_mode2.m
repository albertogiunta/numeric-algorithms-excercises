% Scrivere un programma MatLab che permetta all?utente di scegliere di 
% tabulare i valori di una tra le tre seguenti funzioni a scelta in punti 
% equidistanti nell?intervallo specificato con passo 0.0001, visualizzando 
% in tabella il valore di x ed il corrispondente valore della funzione 
% Visualizzare anche il grafico.

clc;
clear;

choice = input('1. Funzione 1\n2. Funzione 2\n3. Funzione 3\n');

interval = [-1:0.0001:1];

% FEVAL Metodo 2
if choice == 1
    f = 'func1';
elseif choice == 2
    f = 'func2';
elseif choice == 3
    f = 'func3';
end

val_f = zeros(length(interval), 1); % array che contiene i valori della f nei vari punti

% calcolo la funzione nei vari punti dell'intervallo
for i = 1: length(interval)
    val_f(i) = feval(f, interval(i));
end

for i = 1: length(interval)
    fprintf('x = %5.4f\tf(x) = %9.7f\n', interval(i), val_f(i));
end

figure
plot(interval, val_f);