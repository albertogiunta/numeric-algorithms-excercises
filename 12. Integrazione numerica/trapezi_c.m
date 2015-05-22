function [ I ] = trapezi_c( a, b, f, n )
    
    h = (b - a) / n;
    x = linspace(a, b, n+1);
    
    I = feval(f, x(1)) / 2;
    
    for i = 2: n
        I = I + feval(f, x(i));
    end
    
    I = (I + feval(f, x(n+1))) * h;
    
end

