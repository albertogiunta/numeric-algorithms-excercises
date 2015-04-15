function [ ] = secanti( f, x0, x1, prec, max_it )
    
    tic
    for i = 1: max_it
        m = get_m(f, x0, x1);
        x0 = x1;
        x1 = x1 - (feval(f, x1) / m);
        
        if (abs(x1 - x0)) < prec
                break;
        end
        
         
    end
    
    time = toc;
         
    fprintf('Secanti\t\t\t%f\t\t%d\t\t\t%12.10f\t\t%fs\n', x1, i, prec, time); 
end

