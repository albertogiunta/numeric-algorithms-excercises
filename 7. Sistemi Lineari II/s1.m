clc;
clear;
n_values = [10 50 100 250 1000 1500];

fprintf('n\t\t\t\tM. tridiagonali\t\tM. piene\n');
for i = 1: length(n_values)
    [t1, t2] = exec(n_values(i));
    fprintf('%d  \t\t\t%f\t\t\t%f\n', n_values(i), t1, t2);
end