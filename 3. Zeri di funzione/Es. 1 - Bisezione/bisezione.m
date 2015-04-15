function [ c ] = bisezione( f, interval, prec, max_it )
    
    if (feval(f, interval(1)) * feval(f, interval(2))) > 0
        
        fprintf('Non ? possibile calcolare lo zero della funzione data nell intervallo [ %d %d] tramite il metodo di bisezione', interval(1), interval(2));
        
    else
        
        a = interval(1);
        b = interval(2);
        
        for i = 1:max_it
            c = 0.5*(a + b);
            
            if (abs(b-a)/2^(i-1)) < prec
                break;
            elseif (feval(f, c))*feval(f, a) < 0
                    b = c;
            elseif (feval(f, c))*feval(f, b) < 0
                    a = c;
            end
        end
    end
    
end

