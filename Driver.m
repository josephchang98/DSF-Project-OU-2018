% checks if data has been loaded or not
% given by TA Matt
hasRun = exist('num', 'var');
if hasRun == 0
    disp('Importing data...');
    [num, text] = ExceltoGraph('Bitcoin.xlsx');
elseif hasRun == 1
    disp('Reusing data...');
    close all
else
    disp('Error.');
    return
end
disp('---------------');
%-------------------------------------------------------------------
% plots original graph
figure(1)
days = 0:1:3034;
plot(days,num)
title('Recorded Prices'); grid on;
ylabel('Prices');
xlabel('Dates');    xlim([0 3034]);

% calls filtered function
[avg] = Filtered(num);

% plots filtered data
figure(2)
plot(avg)
title('Averaged Prices'); grid on;
ylabel('Prices');
xlabel('Dates');    xlim([0 3034]);

% part of data where values are decreasing
decAvg = avg(2755:3035);
%--------------------------------------------------------------------
decDay  = 1:length(decAvg); % Days for decAvg

% plots graph comparing original data and filtered data
figure(3)
plot(days,num,days,avg);grid on;
ylabel('Prices');
xlabel('Dates');    xlim([2500 3034]);
title('Recorded Data vs Averaged Data');
legend('Recorded Data','Averaged Data');

% used Curve Fitting Toolkit to find values
% given by TA Matt
% Fitted curve data for averaged prices:
a = 4729;       b = -0.035360;  % Parameter Set 1
c = 9314;       d = -0.001324;  % Parameter Set 2

x = 0:1:365-1;                  % Predicting 365 days into the future
fit = a*exp(b.*x) + c*exp(d*x); % Fitted curve

Days = [decDay x];              % Appending arrays for plotting

% plots graph of predicted curve
figure(4);
plot(Days(001:281),decAvg);     hold on;
plot(Days(282:end),fit);        hold off;
grid on;    xlim([0 364]);      ylim([4000 14000]);  
title('Bitcoin Value');         legend('Measured','Predicted')

% The value is expected to fall below $6000 51 days after the
% last price was recorded, assuming the average was accurate.
%--------------------------------------------------------------------
