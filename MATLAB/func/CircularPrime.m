function [ y ] = CircularPrime( n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if isprime(n)==0
    y=[];
    return
end
s=int2str(n);
if any(mod(s,2)==0)
    y=[];
    return
end
l=length(s);
y=[n];
for i=2:l
    a=[s(i:l) s(1:i-1)];
    k=str2num(a);
    if isprime(k)==0
        y=[];
        return
    end
    y=[y k];
end
end

