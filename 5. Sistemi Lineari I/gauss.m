function [ L, R, P ] = gauss( A )
    
    n = size(A, 1);
    L = zeros(n);
    P = eye(n);
    

    for k = 1: n-1
        [~, index] = max(abs(A(k:n, k)));
        index = index + k -1;
        if index ~= k
            
            %scambio la riga di A
            temp = A(k, :);
            A(k, :) = A(index, :);
            A(index, :) = temp;
            
            % scambio la riga di L
            temp = L(k, :);
            L(k, :) = L(index, :);
            L(index, :) = temp;
            
            % scambio la riga di P
            temp = P(k, :);
            P(k, :) = P(index, :);
            P(index, :) = temp;
         end
        
        for i = k+1: n
            m = A(i, k) / A(k, k);
            A(i, k) = m;
            for j = k+1: n
                A(i, j) = A(i, j) - m * A(k, j);
            end
            L(i, k) = m;
        end
    end
    
    L = eye(n) + L;
    R = triu(A);
    
end

