clear;
clc;

n = 10000;

pol = [ 256 -1024 1792 -1792 1120 -448 112 -16 1 ];


int1 = linspace(1.9, 2.2, n);
int2 = linspace(1.9, 2.1, n);
int3 = linspace(1.92, 2.08, n);
int4 = linspace(1.93, 2.07, n);
int5 = linspace(1.94, 2.06, n);

% for i = 1:1:n
%     res1(i) = pol_w_horner(pol, int1(i));
%     res2(i) = pol_w_horner(pol, int2(i));
%     res3(i) = pol_w_horner(pol, int3(i));
%     res4(i) = pol_w_horner(pol, int4(i));
%     res5(i) = pol_w_horner(pol, int5(i));
% end

% for i = 1:1:n
%     res1(i) = simple_eval(int1(i));
%     res2(i) = simple_eval(int2(i));
%     res3(i) = simple_eval(int3(i));
%     res4(i) = simple_eval(int4(i));
%     res5(i) = simple_eval(int5(i));
% end

% for i = 1:1:n
%     res1(i) = extendend_eval(int1(i));
%     res2(i) = extendend_eval(int2(i));
%     res3(i) = extendend_eval(int3(i));
%     res4(i) = extendend_eval(int4(i));
%     res5(i) = extendend_eval(int5(i));
% end

figure

subplot(1,5,1)
plot(int1, res1);
title('Intervallo 1');

subplot(1,5,2)
plot(int2, res2);
title('Intervallo 2');

subplot(1,5,3)
plot(int3, res3);
title('Intervallo 3');

subplot(1,5,4)
plot(int4, res4);
title('Intervallo 4');

subplot(1,5,5)
plot(int5, res5);
title('Intervallo 5');