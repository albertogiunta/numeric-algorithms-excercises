function [ x_curr ] = newton( f, f_der, x_prev, prec, max_it, flag )

    if strcmp(flag, 'Noderivata')
    else
        for i = 1: max_it
            x_curr = x_prev - (feval(f, x_prev) / feval(f_der, x_prev));
            
            if (abs(x_curr - x_prev)) < prec
               break;
            end
            
            x_prev = x_curr;
        end
    end
end

