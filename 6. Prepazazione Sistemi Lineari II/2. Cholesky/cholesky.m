function [ l, flag ] = cholesky( A )
    
    n = size(A, 1);
%     if A == A'
%         if eig(A) > 0
%             disp('La matrice e'' simmetrica e definita positiva')
%             flag = 1;
%         else
%             disp('La matrice e'' simmetrica ma non definita positiva')
%             flag = 0;
%             return
%         end
%     else
%         disp('La matrice non e'' simmetrica')
%         flag = 0;
%         return
%     end

    for i=1:n
        somma = 0;
        for j=1:n 
            if j~=i
                somma = somma + abs(A(i,j));
            end
        end
 
        if abs(A(i,i)) <= somma
            disp('La matrice non ? definita positiva');
            flag = 0;
            return
        end
        flag = 1;
    end

    n = size(A, 1);
    
    l = zeros(size(A));
    
    for j = 1: n
        l(j, j) = sqrt(A(j, j) - sum(l(j, 1:j-1).^2));
        for i = j+1: n
            l(i, j) = (A(i, j) - sum(l(i, 1:j-1).*l(j, 1:j-1))) / l(j, j);
        end
    end
end

