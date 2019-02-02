function [ l ] = longPow( a,b )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
l=[a];
while l(end)>9
    d1=mod(l(end),10);
    d10=l(end)-d1;
    l(end)=d1;
    l=[l d10/10];
end
for j=1:b-1
l=l*a;
i=1;
while any(l>9)
    
    d1=fix(mod(l(i),10));
    d10=(l(i)-d1)/10;
    l(i)=d1;
    if length(l)<i+1
        l=[l,0];
    end
    l(i+1)=l(i+1)+(d10);
    i=i+1;
    
end
end
l=l(end:-1:1);
end