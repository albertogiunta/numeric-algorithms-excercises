% Realizzate 4 m-function che implementino i 4 metodi di approssimazione 
% del valore di ? visti a lezione: 
% Metodo di Archimede, 
% Metodo di Viete,  
% Metodi di Leibniz, 
% Metodo dello sviluppo in serie dell?arcoseno.  
% Confrontate la stabilit? e la velocit? di questi algoritmi, 
% mediante un grafico che riporti l?errore relativo al variare di n.

clear;
clc;

n = 200;
v = [1:1:n];

archimede_err_values = zeros(1,n);
viete_err_values = zeros(1,n);
leibniz_err_values = zeros(1,n);
arcsen_err_values = zeros(1,n);

tic
for i = 1:n 
    archimede_err_values(i) = relative_error_calc(archimede(i), pi);
end
t = toc;
fprintf('Archimede: %f\n\n', t);

tic
for i = 1:n 
    viete_err_values(i) = relative_error_calc(viete(i), pi);
end
t = toc;
fprintf('Viete: %f\n\n', t);

tic
for i = 1:n 
    leibniz_err_values(i) = relative_error_calc(leibniz(i), pi);
end
t = toc;
fprintf('Leibniz: %f\n\n', t);

tic
for i = 1:n 
    arcsen_err_values(i) = relative_error_calc(arcsen(i), pi);
end
t = toc;
fprintf('ArcSen: %f\n\n', t);

figure
subplot(2, 2, 1);
semilogy(archimede_err_values);
title('Metodo di Archimede');

subplot(2, 2, 2);
semilogy(viete_err_values);
title('Metodo di Viete');

subplot(2, 2, 3)
semilogy(leibniz_err_values);
title('Metodo di Leibniz');

subplot(2, 2, 4)
semilogy(arcsen_err_values);
title('Metodo del Arcoseno');
