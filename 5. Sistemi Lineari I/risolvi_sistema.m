function [ x ] = risolvi_sistema( A, b)

    [L, R, P] = gauss(A);
    
    y = forward(L, P*b);
    
    x = backward(R, y);

end

