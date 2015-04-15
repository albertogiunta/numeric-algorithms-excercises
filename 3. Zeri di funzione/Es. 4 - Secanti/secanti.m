function [ x ] = secanti( f, x, prec, max_it )

    m_initial = @(x)-feval(f, x)/x;
    m = feval(m_initial, x);

    for i = 1: max_it
        temp = x;
        x = x - (feval(f, x) / m);
        
        if (abs(x - temp)) < prec
                break;
        end
        
        m = get_m(f, x, temp); 
    end
         
end

