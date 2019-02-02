function [ v ] = isMem( a,b )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
l=length(a);
for i=1:l
    v(i)=any(i==b);
end

end

