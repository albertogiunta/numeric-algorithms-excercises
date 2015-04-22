function [ x, i ] = newton( f, f_der, x, prec, max_it )

    for i = 1: max_it
        x_prec = x;
        x = x - (feval(f, x) / feval(f_der, x));
        
        if abs(x - x_prec) < prec
            break;
        end
    end

end

