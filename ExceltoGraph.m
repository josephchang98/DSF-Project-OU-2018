[num, text] = xlsread('Bitcoin', 'A2:A3036');
plot(num)
%change formatting for time/date so that all range is correct
set(gca,'xticklabel', text.')