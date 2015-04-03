function [ ] = der_calc( h_vett, x, func)
    
    fprintf('X: \t\t\t%d\n', x);
disp('*******');

for i = 1:length(h_vett)
    fprintf('VALORE: \t\t10^(%d)\n', h_vett(i));

    d = deriv(10^h_vett(i), x, 'func1');
    fprintf('Valore approssimato: \t%d\n', d);
    
    a = analitic_func1(x);
    fprintf('Valore calcolato: \t%d\n', a);
    
    fprintf('Errore relativo: \t%d\n', relative_error_calc(d, a));
    
    disp('------------------------------------------');
end

    
end

