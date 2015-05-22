function [x, err, k, rho] = jacobi(A, b, x, maxiters, prec)

    D = diag(diag(A));
    E = tril(A, -1);
    F = triu(A, 1);
    
    M = D;
    N = -(E + F);
    T = M\N;
    
    arresto = 1;
    k = 1;
    xOld = x;
    q = M\b;
    rho = abs(eigs(T, 1, 'lm'));
    err = zeros(length(A),1);
    
    while arresto >= prec && k <= maxiters
        
        x = T * xOld + q;

        arresto = norm(x - xOld, 1) / norm(x, 1);
        err(k) = arresto;
        xOld = x;
        k = k+1;
    end
    k = k-1;
end