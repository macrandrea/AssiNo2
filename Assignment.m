clc
clear 
format long
tic;
x=[8,10,12,16,20,30,40,60,100];
y=[0.88,1.22,1.64,2.72,3.96,7.66,11.96,21.56,43.16]';
%using cholesky in LeSqu
[u]=LeSqu(x,y,2);

%using QR
[beta]=QRbackSlash(x,y,2);
toc;
%plotting
%y=1:9;
A=Vander(x,2);
fit1=A*u;
fit2=A*beta;
plot(x,fit1,'r--x',x,fit2,'b:o') %fit1 vs fit2
grid on
%%%%%%%%
%yyaxis right
%plot(fit1,y);
%yyaxis left
%plot(fit2,y);
%grid on

%newplot
%plot(fit1)
%newplot
%plot(fit2)