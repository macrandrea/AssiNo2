function [u,ell]=LeSqu(x,y,polyMax)
A=Vander(x,polyMax);
C=A'*A;
d=A'*y;
m=length(d);
n=rank(A);
    if m==n %check full cols rank
        L=chol(C,"upper");
        u=backsubUTri(L,d,m);
        R=chol(C,"lower");%forse inefficiente
        ell=backsubLoTri(R,d,m);
    else
        error('No full cols rank')
    end
end