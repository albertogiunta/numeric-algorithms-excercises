function [ nor ] = norma( A, flag)
    
    uno = 1;
    inf = 0;

    if flag == uno
        % norma 1 (di vettore)
        val_norma = zeros(size(A, 2), 1); % vettore che conterr? le sommatorie di ogni colonna
        for i = 1:size(A,2) % ripeto il procedimento per ogni colonna
            val_norma(i) = sum((abs(A(:,i)))); % sommatoria di ogni colonna (sommo tutti gli elementi di tutte le righe della colonna i)
        end    
       
        
    elseif flag == inf   
        
        % norma infinito (di matrice)
        val_norma = zeros(size(A, 1), 1); % vettore che conterr? le sommatorie di ogni riga
        for i = 1:size(A,1) % ripeto il procedimento per ogni riga
            val_norma(i) = sum((abs(A(i, :)))); % sommatoria di ogni riga (sommo tutti gli elementi di tutte le colonne della i riga)
        end    
        
    end
    
    if length(val_norma) > 1 % se era una matrice
        nor = max(val_norma);
    else % se era un vettore
        nor = val_norma;
    end
    
end