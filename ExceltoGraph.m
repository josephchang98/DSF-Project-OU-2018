[hi,text] = xlsread('Bitcoin', 'A2:A3036');
[num] = xlsread('Bitcoin', 'B2:B3036');
plot(num)
%change formatting for time/date so that all range is correct
set(gca,'xticklabel', text.')