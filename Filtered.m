function [out] = Filtered(in) 
    Array = in;
    Price = Array(:, 1);
    
    % averaging filter; averages every 50 data points
    n = 50;
    yy = filter(ones(1, n) / n, 1, Price);
    out = yy;
end
