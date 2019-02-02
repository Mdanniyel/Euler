function [ l ] = reverse ( a )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
l=[a];
while l(end)>9
    d1=mod(l(end),10);
    d10=l(end)-d1;
    l(end)=d1;
    l=[l d10/10];
end
d=length(l):-1:1;
d=10.^(d-1);
l=sum(d.*l);
end

