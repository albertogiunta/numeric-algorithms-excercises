clc;
clear all;

n1 = 100;
n2 = 150;
values1 = [ 20 10 -20 -30 -40 -50 ];

approx_calc(n1, values1);
approx_calc(n2, values1);

approx_calc_w_neg(n1, values1);
approx_calc_w_neg(n2, values1);