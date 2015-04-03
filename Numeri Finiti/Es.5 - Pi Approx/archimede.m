function [ res ] = archimede( n )
    
    p = zeros(1, n); % area
    b = zeros(1, n);
    sen = zeros(1, n);
    
    b(1) = 2;       % potenza del 2 incrementale
    sen(1) = 1;     % seno
    
    for i = 2:n
        p(i) = b(i-1) * sen(i-1);
        b(i) = 2*b(i-1);
        sen(i) = sqrt((1 - sqrt(1 - (sen(i-1))^2)) / 2);
    end
    
    res = p(n);

end