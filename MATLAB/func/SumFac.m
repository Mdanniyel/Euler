function [ s ] = SumFac( n )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
f=[1 1 2 6 24 120 720 5040 40320 362880];
r=[1 10 1e2 1e3 1e4 1e5 1e6 1e7 1e8];
d=floor(log10(n))+1;
d=r(d:-1:1);
d=n./d;
d=floor(d);
d=mod(d,10)+1;
a=f(d);
s=sum(a);

end

