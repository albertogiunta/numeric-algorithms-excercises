function [ x ] = risolvi_sistema( A, b)
    
    [L, R, P] = fatt_lu(A);
    
    [L, R, P] = lu(A);
    
    b = b';
    
    y = forward_sostitution(L, P*b);
    
    x = backward_sostitution(R, y);
    
end

