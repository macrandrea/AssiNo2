function R=Er(n)
R=eye(n);
    for i=1:n
        for j=i+1:n
            R(i,j)=-1;
        end
    end
end