function xyz=LeSqu(x,y,polyMax)
A=Vander(x,polyMax);
C=A'*A;
d=A'*y;
m=width(A);
n=rank(A);
if m==n %check full cols rank
    choleski Cx=d
    b=x'*A*x;
else
    error('No full cols rank')
end


end