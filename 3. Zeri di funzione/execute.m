function [ ] = execute( f, f_der, interval, prec, max_it)
    disp('************************************************')
    [c, i] = bisezione(f, interval, prec, max_it);
    disp('BISEZIONE');
    fprintf('Zero di f\t\tN Iter\n');
    fprintf('%8.5e\t\t%d\n\n', c, i);
    [c, i] = regulafalsi(f, interval, prec, max_it);
    disp('REGULA FALSI');
    fprintf('Zero di f\t\tN Iter\n');
    fprintf('%8.5e\t\t%d\n\n', c, i);
    [c, i] = secanti(f, interval, prec, max_it);
    disp('SECANTI');
    fprintf('Zero di f\t\tN Iter\n');
    fprintf('%8.5e\t\t%d\n\n', c, i);
    [c, i] = newton(f, f_der, interval(2), prec, max_it);
    disp('NEWTON');
    fprintf('Zero di f\t\tN Iter\n');
    fprintf('%8.5e\t\t%d\n\n', c, i);

end
