function [ I ] = simpson( a, b, f )
    
    h = (b-a) / 2;
    x0 = a;
    x1 = a + h;
    x2 = b;
    
    I = h/3 * (feval(f, x0) + 4*feval(f, x1) + feval(f, x2));
end

