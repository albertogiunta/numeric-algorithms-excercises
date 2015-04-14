% Realizzare una m-function che presa in input una matrice , 
% ne restituisca la norma 1, la norma infinito.
% Verificate su matrici a vostra scelta la validit? della seguente relazione 
% di equivalenza tra norme di matrici quadrate di ordine n: 
% 1/n*(norma_inf) <= norma 1 <= sqrt(n)*(norma_inf) 

clc;
clear;

m = input('Inserire un matrice di tipo [... ; ... ; ...]: ');

res = norma1_inf_matr(m);
fprintf('Norma 1 = %d\tNorma Inf = %d\n', res(1), res(2));

false = 0;
is_correct = false;
if size(m,1) == size(m,2)
    is_correct = check(res(1), res(2), size(m,1));
end

true = 1;
if is_correct == true
    disp('I risultati ottenuti sono corretti!');
else
    disp('I risultati ottenuti NON sono corretti!');
end