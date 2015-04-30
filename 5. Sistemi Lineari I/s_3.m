clc;
clear;

disp('INTERVALLO 0 - 1');
fprintf('n\t\t\tErrore\t\t\tCond(A)\n');
for n = 2:15
    A = vander(0, 1, n);
    b = sum(A, 2);
    
    x_real = ones(size(A, 1),1);
    x_calc = risolvi_sistema(A, b);
    
    err = norm(x_real - x_calc, 1) / norm(x_real, 1);
    
    cond_index = norm(A, 1) * norm(inv(A), 1);
    
    fprintf('%d\t\t\t%f\t\t%e\n', n, err, cond_index);
    
end


fprintf('\n\n*******************\n\n');
disp('INTERVALLO 0 - 4');
fprintf('n\t\t\tErrore\t\t\tCond(A)\n');
for n = 2:15
    A = vander(0, 4, n);
    b = sum(A, 2);
    
    x_real = ones(size(A, 1),1);
    x_calc = risolvi_sistema(A, b);
    
    err = norm(x_real - x_calc, 1) / norm(x_real, 1);
    
    cond_index = norm(A, 1) * norm(inv(A), 1);
    
    fprintf('%d\t\t\t%f\t\t%e\n', n, err, cond_index);
    
end
