function [ der ] = deriv( h, x, func )
    
    der = (feval(func, x+h) - (feval(func,x)))/h;

end