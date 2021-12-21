function [beta]=QRbackSlash(x,b,polyMax)
A=Vander(x,polyMax);
beta=A\b;
end