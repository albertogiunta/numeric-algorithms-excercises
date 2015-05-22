function [ x, err, rho, k ] = gauss_seidel( A, b, x0, maxiters, prec )
    
    D = diag(diag(A));
    E = tril(A, -1);
    F = triu(A, 1);
    
    M = E + D;
    N = -F;
    T = M\N;
    
    arresto = 1;
    k = 1;
    xold = x0;
    err = zeros(size(A,1), 1);
    x = x0;
    
    rho = abs(eigs(T, 1, 'lm'));
    if rho >= 1
        return
    end

    while arresto >= prec && k <= maxiters
        x = T*xold + M\b;
        arresto = norm(x - xold, 1) / norm(x, 1);
        err(k) = arresto;
        xold = x;
        k = k+1;
    end
    
    k = k-1;
end

