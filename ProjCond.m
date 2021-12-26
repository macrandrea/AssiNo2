clear
clc
k=zeros(60,1);
a=zeros(60,1);
Erre=cell(60,1);
n=60;
for i=1:n
   Erre{i,1}=Er(i) ;
   [U,S,V]=svd(Erre{i,1});
   sigma=diag(S);
   k(i)=sigma(1)/sigma(i);
   a(i)=1/k(i);
end
semilogy(k,'-h')
%hold on
%semilogy(a,':o')
%hold off


grid on