function [ I ] = ( a, b, f )
    
    h = b - a;

    I = (h / 2) * ( feval(f, a) - feval(f, b));
    
end