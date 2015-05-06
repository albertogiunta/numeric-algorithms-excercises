function [ l ] = cholesky( A )

    l = zeros(size(A));
    n = size(A,1);

    for j = 1: n
        l(j, j) = sqrt(A(j, j) - sum((l(j, 1:j-1).^2)));
        for i = j+1: n
            l(i, j) = (A(i, j) - sum(l(i, 1:j-1) .* l(j, 1:j-1))) / l(j, j);
        end
    end
end