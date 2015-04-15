function [ ] = newton( f, f_der, x_prev, prec, max_it, flag )
    
    tic

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
    
    time = toc;
    
    fprintf('Newton\t\t\t%f\t\t%d\t\t\t%12.10f\t\t%fs\n', x_curr, i, prec, time); 
end

