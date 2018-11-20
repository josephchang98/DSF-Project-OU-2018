[num, text] = ExceltoGraph('Bitcoin.xlsx');
%plots data
figure(1)
plot(num)
%change formatting for time/date so that all range is correct
%set(gca,'xticklabel', text.')
%xlim auto

figure(2)
Filtered
