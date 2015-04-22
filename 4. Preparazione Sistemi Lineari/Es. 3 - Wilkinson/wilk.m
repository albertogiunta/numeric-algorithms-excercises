function [ m ] = wilk( ord )
    
    m = eye(ord);
    m(:, ord) = -2*mod((1:ord)',2)+1;
    
    for i = 1: ord
         if mod(i, 2) ~= 0
             v = -2*mod((i+1:ord)',2)+1;
         else
             v = 2*mod((i+1:ord)',2)-1;
         end
        m(i+1:ord, i) = v;
    end 
end

