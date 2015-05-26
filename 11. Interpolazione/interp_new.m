function [ new ] = interp_new( x, y, interval)
   
    d = differenze_div(x, y);
    new = zeros(length(interval), 1);
    
    for i = 1: length(interval)
        new(i) = newton_interp(interval(i), x, d);
    end
end

