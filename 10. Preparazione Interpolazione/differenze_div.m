function [ d ] = differenze_div( x, y )
    
    n = length(x);
    d = zeros(size(x));
    for k = 1: n
        d(k) = y(k);
    end
    
    for i = 2: n
        for k = n: n-1: i
            d(k) = (d(k) - d(k-1)) / (x(k) - x(k-1));
        end
    end
end