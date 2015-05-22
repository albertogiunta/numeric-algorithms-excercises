function [ y_lagrange ] = lagrange( x, y, xval )
    
    y_lagrange = 0;
    n = length(x);
    for i = 1: n
        product = y(i);
        for j = 1: n
            if i ~= j
                product = product*(xval - x(j)) / (x(i) - x(j));
            end
        end
        y_lagrange = y_lagrange + product;
    end   
end

