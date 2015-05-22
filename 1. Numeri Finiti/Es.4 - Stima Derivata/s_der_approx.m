% Realizzare una m-function che approssimi la derivata delle seguenti 
% funzioni nel punto specificato al diminuire di h:
% f(x)= log(x+1)+x2+2x+1        	  in x=1
% f(x)= exp(x2+1)+cos(x)+2x+1       in x=1

clc;
clear;

x = 1;
h_vett = [-1:-1:-16];
err = zeros(length(h_vett));
err2 = zeros(length(h_vett));
disp('******************************************       F(x) n.1');

fprintf('X: \t\t\t%d\n', x);
disp('*******');

for i = 1:length(h_vett)
%     fprintf('VALORE: \t\t10^(%d)\n', h_vett(i));

    d = deriv(10^h_vett(i), x, 'func1');
%     fprintf('Valore approssimato: \t%d\n', d);
    
    a = analitic_func1(x);
%     fprintf('Valore calcolato: \t%d\n', a);
    
%     fprintf('Errore relativo: \t%d\n', relative_error_calc(d, a));
    err(i) = relative_error_calc(d, a);
    fprintf('%d\t%d\t%d\n', d, a, err(i));
    
%     disp('------------------------------------------');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('******************************************       F(x) n.2');

fprintf('X: \t\t\t%d\n', x);
disp('*******');

for i = 1:length(h_vett)
%     fprintf('VALORE: \t\t10^(%d)\n', h_vett(i));

    d = deriv(10^h_vett(i), x, 'func2');
%     fprintf('Valore approssimato: \t%d\n', d);
    
    a = analitic_func2(x);
%     fprintf('Valore calcolato: \t%d\n', a);
    
%     fprintf('Errore relativo: \t%d\n', relative_error_calc(d, a));
    err2(i) = relative_error_calc(d, a);
    fprintf('%d\t%d\t%d\n', d, a, err2(i));
    
%     disp('------------------------------------------');
end

semilogy(err, 'r');

hold on
semilogy(err2, 'b');
legend('func 1', 'func 2');
hold off