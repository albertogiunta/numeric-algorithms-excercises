function [ c, i ] = bisezione( f, interval, prec, max_it )
   
    a = interval(1);
    b = interval(2);
   

    if (feval(f, a) * feval(f, b)) > 0
        disp('La funzione non rispetta il teorema degli zeri --> Impossibile usare il metodo della Bisezione');
        c = 0;
        i = 0;
        return
    end
    
    for i=1:max_it
        c = a + ((b - a) / 2);
        
        if abs(b - a) <= prec
            break;
        elseif (feval(f, a) * feval(f, c)) < 0
            b = c;
        elseif (feval(f, b) * feval(f, c)) < 0
            a = c;
        end
    end
end

