%takes excel sheet and converts it to data
[num,text] = xlsread('Bitcoin', 'B2:B3036:A2:A3036');

%plots data
plot(num)

%change formatting for time/date so that all range is correct
set(gca,'xticklabel', text.')