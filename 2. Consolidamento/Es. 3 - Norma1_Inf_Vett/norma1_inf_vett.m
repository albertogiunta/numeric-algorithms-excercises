function [ res ] = norma1_inf_vett( v )

    res = zeros(2,1);
    
    % norma 1
    res(1) = sum(abs(v));
    
    % norma infinito
    res(2) = max(abs(v));

end