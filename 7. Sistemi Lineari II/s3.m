clc;
clear;

n = 1500;

tril_left = tril(randn(10));
B = tril_left + tril_left' + diag(ones(10,1).*10);

[ l ] = cholesky(B);

b = sum(B, 2);

y = l \ b;

x = l' \ y;