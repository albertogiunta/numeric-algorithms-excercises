function [ res ] = pol_w_classic( V, point )

    n = length(V);
    res = V(1);
    for i = 1:1:n
        res = res + (point^i * V(i));
    end

end