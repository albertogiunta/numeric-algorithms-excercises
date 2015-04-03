clear;
clc;

n = 100;
v = [1:1:n];

archimede_err_values = zeros(1,n);
viete_err_values = zeros(1,n);
leibniz_err_values = zeros(1,n);
arcsen_err_values = zeros(1,n);

for i = 1:n 
    archimede_err_values(i) = relative_error_calc(archimede(i), pi);
    viete_err_values(i) = relative_error_calc(viete(i), pi);
    leibniz_err_values(i) = relative_error_calc(leibniz(i), pi);
    arcsen_err_values(i) = relative_error_calc(arcsen(i), pi);
end

figure
subplot(1, 4, 1);
plot(v, archimede_err_values);
title('Metodo di Archimede');

subplot(1, 4, 2);
plot(v, viete_err_values);
title('Metodo di Viete');

subplot(1, 4, 3)
plot(v, leibniz_err_values);
title('Metodo di Leibniz');

subplot(1, 4, 4)
plot(v, arcsen_err_values);
title('Metodo del Arcoseno');
