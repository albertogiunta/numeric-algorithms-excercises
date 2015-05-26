function [ I ] = simpson( a, b, f )
    
    h = b - a / 2;

    x0 = a; 
    x1 = a + h;
    x2 = b;
    
    I = h/3 * (feval(x0) + 4feval(x1) + feval(x2));

end

