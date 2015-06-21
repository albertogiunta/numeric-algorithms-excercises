function [ I1, k ] = richardson_s( a, b, f, prec )
    
    k = 2;
    I1 = simpson_c(a, b, f, 2);
    I2 = simpson_c(a, b, f, 2^k);
    
    err = abs(I2 - I1) * 16/15;
    
    while(err > prec) 
        k = k+1;
        I2 = simpson_c(a, b, f, 2^k);
        err = abs(I2 - I1) * 16/15;
        I1 = I2;
    end 
end