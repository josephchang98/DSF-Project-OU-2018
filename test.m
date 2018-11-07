w = 0:pi/200:pi;
H = 1 - exp(-1i*w) + exp(-1i*2*w);
subplot(211)
plot(w,abs(H))
grid
hold
plot([pi/4 pi/4],[0 3],"r")
plot([pi/3 pi/3],[0 3],'r')
ylabel('BitCoin')
subplot(212)
plot(w,angle(H))
grid
hold
plot([pi/4 pi/4],[-2 3],'r')
ylabel('Phase (rad)')
xlabel('Digital Frequency\omega')