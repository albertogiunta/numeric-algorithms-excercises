function [ res ] = viete( n )
    
    cos = zeros(1, n); 
    p = zeros(1, n); %area
    
    cos(1) = 0;
    p(1) = 2;
    
    for i = 2:n
        cos(i) = sqrt((1 + cos(i-1))/2);
        p(i) = p(i-1)/cos(i);
    end
   
    res = p(n);
    
end