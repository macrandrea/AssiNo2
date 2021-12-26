clear
clc
R10= Er(10);
[U1,S1,V1]=svd(R10);
R20= Er(20);
[U2,S2,V2]=svd(R20);
R50= Er(50);
[U3,S3,V3]=svd(R50);
R100=Er(100);
[U4,S4,V4]=svd(R100);
sing1=diag(S1);
sing2=diag(S2);
sing3=diag(S3);
sing4=diag(S4);

%k1=sing1(1)/sing1(10);
%k2=sing2(1)/sing2(10);

plot(sing1,'-.p')
hold on
 plot(sing2,'-h')
 plot(sing3,'r--x')
 plot(sing4,'b:o')
 grid on
 hold off

%x=1:1:max(sing4);

%,sing2,x,sing3,x,sing4,x)