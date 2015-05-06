function [ t1, t2 ] = exec( n )
    a = 4*ones(n,1);
    b = -1*ones(n-1, 1);
    c = -1*ones(n-1, 1);

    A = diag(a) + diag(b, -1) + diag(c, 1);

    t = sum(A, 2);
    
    tic
    [ x1 ] = gauss_tridiag(a, b, c, t, n);
    t1 = toc;
    
    tic
    [L, U, P] = lu(A);
    t2 = toc;
    
    y = L \ t;

    x2 = U \ y;
end

