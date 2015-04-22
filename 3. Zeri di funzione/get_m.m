function [ m ] = get_m( f, x0, x1 )

    m = (feval(f, x1) - feval(f, x0)) / (x1 - x0);

end

