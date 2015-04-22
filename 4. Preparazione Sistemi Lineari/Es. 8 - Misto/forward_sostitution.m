function [ x ] = forward_sostitution( L, b)
    
    x = zeros(size(b,1),1);

    for i = 1: size(L, 1)
        x(i) = b(i);
        for j = 1: i-1
            x(i) = x(i) - (L(i, j) * x(j));
        end
        x(i) = x(i) / L(i, i);
    end
end

