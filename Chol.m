function [R]=Chol(A)
[n,n] = size(A);
R = zeros(n,n);
    for j=1:n
        for i = 1:j-1               
            R(i,j)= (A(i,j)- sum(R(1:i-1,i).*R(1:i-1,j)))/R(i,i);        
        end 
        R(j,j) = sqrt(A(j,j)- sum(R(1:j-1,j).^2));
    end
end
