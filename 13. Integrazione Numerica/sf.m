clc;
clear;

t = linspace(0, 10, 201);
n = length(t);
prec = 10^-5;

fx = @(x) cos(x.^2);
fy = @(x) sin(x.^2);

x = zeros(n);
y = zeros(n);

for i = 1: n
    x(i) = richardson_t(0, t(i), fx, prec);
    y(i) = richardson_t(0, t(i), fy, prec);
end
subplot(1,2,1);
plot(x, y, 'r');
title('Richardson Trapezi');
hold on
for i = 1: n
    x(i) = richardson_s(0, t(i), fx, prec);
    y(i) = richardson_s(0, t(i), fy, prec);
end
subplot(1,2,2);
plot(x, y, 'b');
title('Richardson Simpson');
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1: n
    x(i) = trapezi(0, t(i), fx);
    y(i) = trapezi(0, t(i), fy);
end
subplot(1,2,1);
plot(x, y, 'r');
title('Trapezi');
hold on
for i = 1: n
    x(i) = simpson(0, t(i), fx);
    y(i) = simpson(0, t(i), fy);
end
subplot(1,2,2);
plot(x, y, 'b');
title('Simpson');
hold off
