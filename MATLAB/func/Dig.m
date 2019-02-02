function [ l ] = Dig( a )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
if length(a)==1
    d=floor(log10(a))+1;
    l=mod(floor(a./(10.^((d:-1:1)-1))),10);
else
    l=flip(a);
    i=1;
    while any(l>9)
    
        d1=mod(l(i),10);
        d10=(l(i)-d1)/10;
        l(i)=d1;
        if length(l)<i+1
            l=[l,0];
        end
        l(i+1)=l(i+1)+(d10);
        i=i+1;
    
    end
    l=flip(l);
end

end

