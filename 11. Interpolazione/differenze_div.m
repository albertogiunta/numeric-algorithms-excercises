function [ d ] = differenze_div( x, y )
    
    n = length(x);
    d = zeros(n, 1);
    for k = 1: n
        d(k) = y(k);
    end
    for i = 2: n
        for k = n: -1: i
            d(k) = (d(k) - d(k-1)) / (x(k) - x(k-i + 1));
        end
    end
end

