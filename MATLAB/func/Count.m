function [ r ] = Count( v )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
uv=unique(v);
r=[];
for i=1:length(uv)
    r(i,1)=uv(i);
    r(i,2)=sum(v==uv(i));
end

end

