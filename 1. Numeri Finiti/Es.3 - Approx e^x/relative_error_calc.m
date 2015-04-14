function [ err ] = relative_error_calc( human, calculator )
    
    % calcolo l'errore relativo 
    
    % human : risultato ottenuto tramite algoritmo con troncamento,
    % effettuato dall'"utente"
    
    % calculator : ? il valore di default calcolato dal calcolatore
    
    err = abs((human - calculator) / human);

end