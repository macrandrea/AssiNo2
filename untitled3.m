clc
clear 
format long
x=[8,10,12,16,20,30,40,60,100];
y=[0.88,1.22,1.64,2.72,3.96,7.66,11.96,21.56,43.16]';
%0.88=a1+a28+a316
%A=Vander(x,2);
%C=A'*A;
%d=A'*y;
%L=chol(C);f=inv(L'*L)*L'*d;
[u,ell]=LeSqu(x,y,2) ;


