clear;
clc;
close all;
axis([0 1 0 1]);
hold on
n = 0;
button = 1;
stop = 10;
x = zeros(stop, 1);
y = zeros(stop, 1);

while(button == 1)
    [xi, yi, button] = ginput(1);
    plot(xi, yi, 'ro')
    n = n+1;
    x(n) = xi;
    y(n) = yi;
    if n == stop
        button = 0;
    end
end

n = n-1;

hold off
scelta = input('Interpolare una funzione(1) o una curva(2)? ');


m = 1000;


if scelta == 1
    interval = linspace(min(x), max(x), m);
    new = interp_new(x, y, interval);
    spl = spline(x, y, interval);
    
    figure
    plot(interval, new, 'b');
    hold on
    plot(interval, spl, 'g');
    hold on
    plot(x, y, 'ro');
    legend('Newton', 'Spline');
    title('Interpolazione tramite funzioni')
    hold off
    
elseif scelta == 2
    t = length(x);
    interval = linspace(0, 1, 1000);
    t(1) = 0;
    for i = 2: length(x)
        t(i) = t(i-1) + sqrt((x(i) - x(i-1))^2 + (y(i) - y(i-1))^2);
    end
    t = t/t(length(t));
    
    newtx = interp_new(t, x, interval);
    spltx = spline(t, x, interval);
    
    newty = interp_new(t, y, interval);
    splty = spline(t, y, interval);
    
    figure
    plot(newtx, newty, 'b');
    hold on
    plot(spltx, splty, 'g');
    hold on
    plot(x, y, 'ro');
    legend('Newton', 'Spline');
    title('Interpolazione tramite curve');
    hold off
   
end


