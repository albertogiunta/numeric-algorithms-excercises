function [ m ] = get_m( f, x, x0 )

    m = (feval(f, x) - feval(f, x0)) / (x - x0);
    
end