function [out] = Filtered(in) 
Array=in;
Price = Array(:, 1);
n = 50;
yy = filter(ones(1, n) / n, 1, Price);
out = yy;
end
