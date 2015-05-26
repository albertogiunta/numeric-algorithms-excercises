clc;
clear;


a = @(x) sin(x);
inta = [0 pi];

b = @(x) cos(x) .* exp(sin(x));
intb = [-10 10];

c = @(x) ((1./x) + exp(x));
intc = [1 2];

d = @(x) (1 ./ (1 + x.^2));
intd = [-5 5];

e = @(x) (5.*x.^3 + 2.*x.^2 + 5);
inte = [3 6];

f = e;
int = inte;

[ It, Is, Irt, itt, Irs, its ] = execute(f, int);

disp(f);
fprintf('Trapezi:\t\t\t\t\t%8.5e\t\tIterazioni: 1\n', It);
fprintf('Simpson:\t\t\t\t\t%8.5e\t\tIterazioni: 1\n', Is);
fprintf('Richardson (Trapezi):\t\t%8.5e\t\tIterazioni: %d\n', Irt, itt);
fprintf('Trapezi (Simpson):\t\t\t%8.5e\t\tIterazioni: %d\n', Irs, its);

x = linspace(int(1), int(2), 1000);
y = feval(f, x);

plot(y);