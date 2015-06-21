function [ I ] = simpson_c( a, b, f, n_intervals )
    
    h = (b - a) / n_intervals;
    x = linspace(a, b, n_intervals + 1);
    
    I = feval(f, x(1));
    for i = 2:2:n_intervals
        I = I + (feval(f, x(i)) * 4);
    end
    
    for i = 3:2:n_intervals
        I = I + (feval(f, x(i)) * 2);
    end
    
    I = (I + feval(f, x(n_intervals + 1))) * h/3;
end