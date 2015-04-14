function [ res ] = norma1_inf_matr( m )

    res = zeros(2,1);
    
    % norma 1 (di vettore)
    norma1 = zeros(size(m, 2), 1);
    for i = 1:size(m,2)
        norma1(i) = sum((abs(m(:,i))));
    end    
    
    res(1) = max(norma1);
    
    % norma infinito (di matrice)
    normaInf = zeros(size(m, 1), 1);
    for i = 1:size(m,2)
        normaInf(i) = sum(m(i, :));
    end    
    res(2) = max(normaInf);

end
