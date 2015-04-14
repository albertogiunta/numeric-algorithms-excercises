function bool = check( norma1, normaInf, ordine)

    bool = 0;
    if (norma1 >= (1/ordine)*normaInf) && (norma1 <= (sqrt(ordine)*normaInf))
        bool = 1;
    end

end