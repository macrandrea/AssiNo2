function x=LeSqu(x,y,polyMax)
A=Vander(x,polyMax);
C=A'*A;
d=A'*y;
m=width(A);
n=rank(A);
    if m==n %check full cols rank
        L=chol(C);
        x=inv(L'*L)*L'*d;
     
    else
        error('No full cols rank')
    end
end