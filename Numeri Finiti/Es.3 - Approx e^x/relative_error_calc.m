function [ err ] = relative_error_calc( human, calculator )

    err = abs((human - calculator) / human);

end