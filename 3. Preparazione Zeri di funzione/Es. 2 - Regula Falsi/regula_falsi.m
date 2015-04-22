function [ x_curr ] = regula_falsi( f, interval, prec, max_it )
    
    if (feval(f, interval(1)) * feval(f, interval(2))) > 0
        
        fprintf('Non ? possibile calcolare lo zero della funzione data nell intervallo [ %d %d] tramite il metodo di bisezione', interval(1), interval(2));
        
    else

        m = get_m(f, interval(1), interval(2));

        % y - y0 = m(x - x0)
        y0 = feval(f, interval(2));
        x0 = interval(2);

        f_x = @(m)(-m*x0 + y0)/m;

        x_prev = feval(f_x, m);

        for i=1:max_it
            x_curr = x_prev - (get_m(f, x_prev, x0)^-1 * feval(f, x_prev));

            if (abs(x_curr - x_prev)) < prec
                break;
            end
            x_prev = x_curr;
        end
    end
end


