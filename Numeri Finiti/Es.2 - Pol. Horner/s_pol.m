clc;
clear all;

pol1 = [ 256 -1024 1792 -1792 1120 -448 112 -16 1 ];
pol2 = [ 1 -4 0 12 -7 0 28 0 0 -8 0 1 ];

inter1 = linspace(1.8, 2.2, 10000);
inter2 = linspace(-5, 5, 10000);

res_pol1 = inter1;
res_pol2 = inter2;

% PRIMO POLINOMIO
% classic method
disp('Primo polinomio - Metodo classico');
tic
for i = 1:1:length(inter1)
    pol_w_classic(pol1, inter1(i));
end
toc

% horner method
disp('Primo polinomio - Metodo di Horner');
tic
for i = 1:1:length(inter1)
    res_pol1(i) = pol_w_horner(pol1, inter1(i));
end
toc

% SECONDO POLIMONIO
% classic method
disp('Secondo polinomio - Metodo classico');
tic
for i = 1:1:length(inter2)
    pol_w_classic(pol2, inter2(i));
end
toc

% horner method
disp('Seocndo polinomio - Metodo di Horner');
tic
for i = 1:1:length(inter2)
    res_pol2(i) = pol_w_horner(pol2, inter2(i));
end
toc

figure

subplot(1, 2, 1);
plot(inter1, res_pol1);
title('Primo Polinomio');

subplot(1, 2, 2);
plot(inter2, res_pol2);
title('Secondo Polinomio');