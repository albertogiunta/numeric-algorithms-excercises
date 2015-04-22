function [ L, R, P ] = fatt_lu( M )
    
    L = eye(size(M, 1));    
    P = eye(size(M, 1));    
    n = size(M, 1);
    
    for k = 1: n-1
        [~, index] = max(abs(M(k:n, k)));
        index = index + k -1;
        if index ~= k            
            
            % scambio la riga
            temp = M(k, :);
            M(k, :) = M(index, :);
            M(index, :) = temp;
            
            % scambia riga matrice P
            temp = P(k, :);
            P(k, :) = P(index, :);
            P(index, :) = temp;
        end

        for i = k+1: n
            m = M(i, k) / M(k, k);
            M(i, k) = m;
            for j = k+1: n
                M(i, j) = M(i, j) - m * M(k, j);
            end
            L(i, k) = m;
        end            
    end

    R = triu(M)    
    
end