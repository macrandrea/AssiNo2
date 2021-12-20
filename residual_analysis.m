%r=d-Cx

clc
clear
x=[8,10,12,16,20,30,40,60,100];
y=[0.88,1.22,1.64,2.72,3.96,7.66,11.96,21.56,43.16]';

A=Vander(x,2);
C=A'*A;
d=A'*y;
xhatappr=[-1.919, 0.2782,0.001739]';
xhat=[-1.919149252699108, 0.278213536291726, 0.001739400875055]';
r=d-C*xhat;
rappr=d-C*xhatappr;

cappa=cond(C);
icappa=inv(cappa);
LB=icappa*((norm(r)/norm(d)));
UB=cappa*((norm(r)/norm(d)));
central_term=(norm(xhat-xhatappr)/norm(xhat));