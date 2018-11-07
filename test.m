w = 0:pi/200:pi;
H = 1 - exp(-1i*w) + exp(-1i*2*w);
subplot(210)
ylabel('Phase (rad)')