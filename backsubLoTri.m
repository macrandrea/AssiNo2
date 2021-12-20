function x=backsubLoTri(L,y,m)
x=zeros(m,1);
x(1)=y(1)/L(1,1);
    for i=2:m
        x(i)=(y(i)-L(i,1:i-1)*x(1:i-1))/L(i,i);
    end
end