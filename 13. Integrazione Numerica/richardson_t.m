function [ I1, k ] = richardson_t( a, b, f, prec )
    
    k = 1;
    I1 = trapezi_c(a, b, f, 1);
    I2 = trapezi_c(a, b, f, 2^k);
    
    err = abs(I2 - I1) * 4/3;
    
    while(err > prec) 
        k = k+1;
        I2 = trapezi_c(a, b, f, 2^k);
        err = abs(I2 - I1) * 4/3;
        I1 = I2;
    end
end

