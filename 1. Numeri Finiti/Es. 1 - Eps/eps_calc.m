function [ eps ] = eps_calc(  )

    eps = 0.5; % valore iniziale
    
    while ((1 + eps) > 1) % non mi fermo finch? non trovo un valore cos? piccolo che sommato a 1 non ? maggiore di 1
        eps = eps*0.5; % moltiplico eps per 1/2
    end
    
    eps = 2*eps; % trovo la pi? piccola cifra significativa
end