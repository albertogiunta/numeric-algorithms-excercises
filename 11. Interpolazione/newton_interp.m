function [ Pn ] = newton_interp( xval, x, d )
    
    n = length(x);
    Pn = d(n);
    for i = n-1: -1: 1
        Pn = d(i) + (xval - x(i)) * Pn;
    end   
end