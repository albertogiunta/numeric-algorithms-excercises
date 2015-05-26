function [ I ] = simpson_c( a, b, f, n )
    
    if mod(n,2) == 1
        disp('n non ? pari! ergo ciccia');
        return;
    end

    h = (b - a) / n;
    x = linspace(a, b, n+1);
    
    I = feval(f, x(1));
    
    for i = 2 : n
        if mod(i, 2) == 1
            I = I + 2*feval(f, x(i));
        else
            I = I + 4*feval(f, x(i));
        end
    end
    
    I = I + feval(f, x(n+1));
    
end