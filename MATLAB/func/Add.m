function [ r ] = Add( v,a,i )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    if i==1
       r=[a v];
       return
    elseif i>length(v)
        v(i)=a;
        r=v;
        return
    end
r=[v(1:i-1) a v(i:end)];
    
end