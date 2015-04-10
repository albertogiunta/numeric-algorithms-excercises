function [ res ] = approximator( limit, val )
    
    res = 1 + val;
    
    for i = 2:1:limit
       res = res + ((val^i)/factorial(i));
    end
    
end