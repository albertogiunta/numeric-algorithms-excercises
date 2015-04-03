function [ res ] = leibniz( n )
    
    q = zeros(1, n);
    q(1) = 1;
    
    for i = 2:n
        q(i) = q(i-1) + (((-1)^(i-1)) / ((2*i)-1));
    end
    
    p = 4*q(n);
    
    res = p;

end

