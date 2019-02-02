function [ l ] = Longadd( a,b )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
a=flip(Dig(a));
b=flip(Dig(b));

if length(a)>length(b)
    l=a;
    l(1:length(b))=l(1:length(b))+b;
else
    l=b;
    l(1:length(a))=l(1:length(a))+a;
end
l=Dig(flip(l));

end

