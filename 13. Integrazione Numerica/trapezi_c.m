function [ I ] = trapezi_c( a, b, f, n_intervals )
    
    h = (b - a) / n_intervals;
    x = linspace(a, b, n_intervals + 1);
    
    I = feval(f, x(1)) * 0.5;
    for i = 2: n_intervals
        I = I + feval(f, x(i));
    end
    
    I = (I + 0.5*feval(f, x(n_intervals + 1))) * h;
end

