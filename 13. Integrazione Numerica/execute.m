function [ It, Is, Irt, it, Irs, its ] = execute( f, int )
    
    prec = 10^-5;
    
    a = int(1);
    b = int(2);
    
    It = trapezi(a, b, f);
    Is = simpson(a, b, f);

    [Irt, it] = richardson_t(a, b, f, prec);
    [Irs, its] = richardson_s(a, b, f, prec);
    
end

