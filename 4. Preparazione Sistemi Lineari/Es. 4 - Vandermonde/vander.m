function [ m ] = vander( n, a, b)
    
    x = linspace(a, b, n);
    
    m = zeros(n);
    
    for i = 1: n
        for j = 1: n
            m(i, j) = x(i)^j;
        end
    end
end

