function [ I ] = trapezi_c( a, b, f, n_intervals )
    
    h = (b - a) / n_intervals;
    x = linspace(a, b, n_intervals + 1);
    
    I = feval(f, x(1)) / 2;
    for i = 2: n_intervals
        I = I + feval(f, x(i));
    end
    
    I = (I + feval(f, x(n_intervals + 1)) / 2) * h;
end

