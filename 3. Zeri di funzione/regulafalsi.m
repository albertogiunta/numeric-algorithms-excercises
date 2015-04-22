function [ x1, i ] = regulafalsi( f, interval, prec, max_it )


    x0 = interval(1);
    x1 = interval(2);

    for i = 1: max_it

        x1 = x1 - ((get_m(f, x0, x1)^-1) * feval(f, x1));
        
        if abs(feval(f, x1)) < prec
            break;
        end
    end   
end

