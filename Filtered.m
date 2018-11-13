Array=num;
Price = Array(:, 1);
title('Graph');
ylabel('Prices');
n = 50;
yy = filter(ones(1, n) / n, 1, Price);
plot(yy);