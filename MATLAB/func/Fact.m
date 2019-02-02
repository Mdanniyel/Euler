function [ f ] = Fact( n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=2;
b=2;
d=0;
while ~(d>1)
    a=mod(a^2+2,n);
    b=mod(b^2+2,n);
    b=mod(b^2+2,n);
    d=Gcd(abs(a-b),n);
    if d>1
        f=d;
        return
    end
end
f=d;
end

