function [ x ] = backward_sostitution( R, b )
    
    x = zeros(size(b,1),1);
    for i = size(R, 1): -1: 1        
        x(i) = b(i);
        for j = i+1 : size(R, 1)
            x(i) = x(i) - (R(i, j) * x(j));
        end
        x(i) = x(i) / R(i, i);
    end
end

