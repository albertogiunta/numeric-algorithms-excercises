function [ I ] = trapezi( a, b, f )
    
    h = b - a;
    x0 = a;
    x1 = b;
    
    I = h/2 * (feval(f, x0) + feval(f, x1));
    
end