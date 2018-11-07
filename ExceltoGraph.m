[v,T,vT]=xlsread('Bitcoin.xls') 
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 
t=v(:,1);y=v(:,2)
%if u have to plot second colone depending on first:
plot(t,y)