function [  ] = approx_calc( limit, values )
  
    taylor = values;
    calculator = values;
    rel_error = values;

    disp('-----------------------------------------------------');
    for i=1:1:length(values)
        fprintf('VALORE: \t\t\t\t\t%d \n', values(i));
        
        taylor(i) = approximator(limit, values(i));
        fprintf('Approssimazione con Taylor troncato a %d : \t%d\n', limit, taylor(i));
        
        calculator(i) = exp(values(i));
        fprintf('Approssimazione con exp(X): \t\t\t%d\n', calculator(i));
        
        rel_error(i) = relative_error_calc(taylor(i), calculator(i));
        fprintf('Errore relativo: \t\t\t\t%d\n', rel_error(i));
        
        disp('*********');
    end
    disp('-----------------------------------------------------');  
    
end

