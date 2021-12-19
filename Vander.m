function A=Vander(x,o)
m=width(x);
A=ones(m,o+1);
    for i=1:m %righe
        for j=2:(o+1) %colos
            A(i,j)=x(i).^(j-1);
        end
    end
end