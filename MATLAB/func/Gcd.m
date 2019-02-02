function [ res ] = Gcd( a,b )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
m=min(a,b);
n=max(a,b);
while m~=0
    c=m;
    m=rem(n,m);
    n=c;
end
res=n;

end

