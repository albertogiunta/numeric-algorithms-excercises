function [ res ] = pol_w_horner( V, point)
   
    n = length(V);
    res = V(n);
    for i = n-1:-1:1
        res = (res * point) + V(i);
    end
    
end