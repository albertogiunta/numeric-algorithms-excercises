function [ A ] = wilk( n )

    A = zeros(n);
    for i = 1:n-1
        A(i, i) = 1;
        A(i+1, i) = 1;
    end
    
    for i = 1:n
        A(i, n) = (-1)^i;
    end
    
    for j = 1: n-1
        for i = j+2: n
            A(i, j) = (-1)^(i+j-1);
        end
    end
    
end

