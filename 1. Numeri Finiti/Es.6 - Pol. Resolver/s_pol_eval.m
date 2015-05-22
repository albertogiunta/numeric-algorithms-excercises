% Realizzare una funzione Matlab che calcola il valore del 
% polinomio p(x)=(x-2)8 utilizzando le formule
% 
% p=x8-16x7+112x6-448x5+1120x4-1792x3+1792x2-1024x+256;
%       p(x)=(x-2)8
% e lo schema di Horner
% e ne realizza il grafico in un vettore di 10000 equidistanti 
% nell?Int. [1.8,2.2], [1.9, 2.1],  [1.92,2.08], [1.93,2.07], [1.94,2.06] 
% Spiegare il comportamento osservato. Cosa succede al restringersi 
% dell?Int. intorno al valore 2, punto in cui questo polinomio si annulla?

clc;
clear;

n = 10000;

pol = [ 256 -1024 1792 -1792 1120 -448 112 -16 1 ];

int1 = linspace(1.9, 2.2, n);
int2 = linspace(1.9, 2.1, n);
int3 = linspace(1.92, 2.08, n);
int4 = linspace(1.93, 2.07, n);
int5 = linspace(1.94, 2.06, n);

for i = 1:1:n
    res1(i) = pol_w_horner(pol, int1(i));
    res2(i) = pol_w_horner(pol, int2(i));
    res3(i) = pol_w_horner(pol, int3(i));
    res4(i) = pol_w_horner(pol, int4(i));
    res5(i) = pol_w_horner(pol, int5(i));
end

figure

subplot(1,5,1)
plot(int1, res1);
title('Polinomio di Horner');
legend('Int. 1');

subplot(1,5,2)
plot(int2, res2);
legend('Int. 2');

subplot(1,5,3)
plot(int3, res3);
legend('Int. 3');

subplot(1,5,4)
plot(int4, res4);
legend('Int. 4');

subplot(1,5,5)
plot(int5, res5);
legend('Int. 5');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1:1:n
    res1(i) = simple_eval(int1(i));
    res2(i) = simple_eval(int2(i));
    res3(i) = simple_eval(int3(i));
    res4(i) = simple_eval(int4(i));
    res5(i) = simple_eval(int5(i));
end

figure 
subplot(1,5,1)
plot(int1, res1);
title('Polinomio ridotto');
legend('Int. 1');

subplot(1,5,2)
plot(int2, res2);
legend('Int. 2');

subplot(1,5,3)
plot(int3, res3);
legend('Int. 3');

subplot(1,5,4)
plot(int4, res4);
legend('Int. 4');

subplot(1,5,5)
plot(int5, res5);
legend('Int. 5');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1:1:n
    res1(i) = extendend_eval(int1(i));
    res2(i) = extendend_eval(int2(i));
    res3(i) = extendend_eval(int3(i));
    res4(i) = extendend_eval(int4(i));
    res5(i) = extendend_eval(int5(i));
end

figure
subplot(1,5,1)
plot(int1, res1);
title('Polinomio non ridotto');
legend('Int. 1');

subplot(1,5,2)
plot(int2, res2);
legend('Int. 2');

subplot(1,5,3)
plot(int3, res3);
legend('Int. 3');

subplot(1,5,4)
plot(int4, res4);
legend('Int. 4');

subplot(1,5,5)
plot(int5, res5);
legend('Int. 5');

