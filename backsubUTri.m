function x=backsubUTri(L,y,m)
    x=zeros(m,1);
    x(m)=y(m)/L(m,m);
    for i=m-1:-1:1
        x(i)=(y(i)-L(i,i+1:m)*x(i+1:m))/L(i,i);
    end
end
