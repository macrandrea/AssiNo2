function [u]=LeSqu(x,y,polyMax)
A=Vander(x,polyMax);
C=A'*A;
d=A'*y;
m=length(d);
n=rank(A);
L=chol(C,"lower");
R=chol(C,"upper");
    if m==n %check full cols rank
        ell=backsubLoTri(L,d,m);
        u=backsubUTri(R,ell,m);
    else
        error('No full cols rank')
    end
end