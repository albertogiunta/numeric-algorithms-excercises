function  [ x ] = tridiag_gauss( a, b, c, t)
    
    n = length(a);
    alfa = zeros(n,1);
    beta = zeros(n-1,1);
    x = zeros(n, 1);
    y = zeros(n, 1);
    
    alfa(1) = a(1);
    for i = 1: n-1
        beta(i) = b(i) / alfa(i);
        alfa(i+1) = a(i+1) - beta(i) * c(i);
    end

    y(1) = t(1);
    for i = 2: n
        y(i) = t(i) - beta(i-1)*y(i-1);
    end


    x(n) = y(n) / alfa(n);
    for i = n-1: -1: 1
        x(i) = (y(i) - c(i)*x(i+1)) / alfa(i);
    end
end