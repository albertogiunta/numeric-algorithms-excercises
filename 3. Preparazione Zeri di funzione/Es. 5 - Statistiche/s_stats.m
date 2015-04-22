% Realizzare quindi uno script matlab che data una funzione:
% a) Ne visualizzi il grafico in un intervallo assegnato.
% b) Chieda all?utente, a partire dal grafico della funzione, di dare in input
% l?intervallo in cui calcolare lo zero.
% c) Verifichi se l?intervallo inserito ? corretto e nel caso non lo sia chieda all?utente di reinserirlo.
% d) Calcoli lo zero della funzione con ciascuno dei quattro metodi implementati , visualizzando la soluzione, il numero di iterazioni, la precisione raggiunta.

clc;
clear;

f = input('Inserire una funzione es. <@(x)x.^2 + 3>  ->  ');
fprintf('Inserire la derivata della funzione %s', func2str(f));
f_der = input('  ->  ');

graph_interval_x = linspace(-100, 100, 10);
graph_interval_y = feval(f, graph_interval_x);

plot(graph_interval_x, graph_interval_y);

corretto = 0;
stato_errato = 0;

while corretto == 0
    if stato_errato == 0
        zero_interval = input('Inserire l''intervallo in cui trovare lo zero, in forma di vettore es. <[-1 2]>  ->  ');
    end
    if length(zero_interval) ~= 2  
        stato_errato = 1;
        zero_interval = input('Formato dell''intervallo errato - inserire due numeri come array es. <[-1 2]>  ->  ');
    elseif (feval(f, zero_interval(1)) * feval(f, zero_interval(2))) > 0
        stato_errato = 1;
        f = input('L''intervallo non soddisfa il teorema degli zeri - inserire un nuovo intervallo  ->  ');
    else 
        corretto = 1;
    end
end

prec = 0.000000001;
max_it = 50;

fprintf('\n\nMETODO\t\t\tSOLUZIONE\t\tN ITERAZIONI\t\tPRECISIONE\t\tTEMPO\n');

bisezione(f, zero_interval, prec, max_it);
regula_falsi(f, zero_interval, prec, max_it);
newton(f, f_der, zero_interval(2), prec, max_it, '');
secanti(f, zero_interval(2)-0.5, zero_interval(2), prec, max_it);