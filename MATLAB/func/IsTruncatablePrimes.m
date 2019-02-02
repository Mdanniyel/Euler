function [ yes ] = IsTruncatablePrimes( x )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
i=0;
while 1
    i=i+1;
    d=x/10^i;
    if d<1
        yes=1;
        return
    end
    if ~isprime(floor(d))
        yes=0;
        return
    elseif ~isprime(round((d-floor(d))*10^i))
        yes=0;
        return
end
end

