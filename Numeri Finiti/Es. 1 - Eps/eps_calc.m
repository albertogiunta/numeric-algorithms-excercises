function [ eps ] = eps_calc( )

    eps = 0.5;
    
    while ((1 + eps) > 1)
        eps = eps*0.5;
    end
    
    eps = 2*eps;
end