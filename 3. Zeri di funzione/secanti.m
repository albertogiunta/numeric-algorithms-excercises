function [ x1, i ] = secanti( f, interval, prec, max_it )


    x0 = interval(1);
    x1 = interval(2);

    for i = 1: max_it
        temp = x1;
        x1 = x1 - (feval(f, x1) / get_m(f, x1, x0));
        
        if abs(x1 - x0) < prec
            break;
        end
        
        x0 = temp;
    end   
end

