function [ res ] = arcsen( n )

    q = zeros(1, n);
    t = zeros(1, n);
    
    q(1) = 0;
    t(1) = 0.5;
    
    for i = 1:n-1
        q(i+1) = q(i) + (t(i) / ((2*i) - 1));
        t(i+1) = ((t(i)) * ((2*i)-1)) / (8*i);
    end
    
    p = 6*q(n);
    
    res = p;
    
end