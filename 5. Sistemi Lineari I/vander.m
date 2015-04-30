function [ A ] = vander( a, b, n )

    x = linspace(a, b, n);
    
    A = zeros(n);
    
    for i = 1:n
        for j = 1:n
            A(i, j) = x(i)^(j-1);
        end
    end
    
end

