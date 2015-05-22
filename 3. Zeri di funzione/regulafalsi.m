function [ x1, i ] = regulafalsi( f, interval, prec, max_it )


    x1 = 0;
    i = 0;
    
    if (feval(f, interval(1)) * feval(f, interval(2))) < 0
        x0 = interval(2);
        x1 = interval(1);
        x = x1;
        for i = 1: max_it 
            x1 = x1 - ((get_m(f, x0, x1)^-1) * feval(f, x1));
            
            if abs(x1 - x) <= prec
%             if abs(feval(f, x1)) < prec
                break;
            end
            x = x1;
        end   
    end
end