function [out1, out2] = ExceltoGraph(in)

%takes excel sheet and converts it to data
[num,text] = xlsread(in, 'B2:B3036:A2:A3036');

out1 = num;
out2 = text;

end