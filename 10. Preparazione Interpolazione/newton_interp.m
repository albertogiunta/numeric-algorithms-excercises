function [ Pn ] = newton_interp( x, d, xval )
    
    Pn = d(n);
    for i = n: n-1: 1
        Pn = d(i) + (xval - x(i)) * Pn;
    end
    
end

