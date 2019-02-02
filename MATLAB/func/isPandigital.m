function [ yes ] = isPandigital( n )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
d=[];
if isstr(n)
    n=str2num(n);
end
if n<123456789 || n>987654321
    yes=0;
    return
end
for i=1:9
    q=mod(n,10);
    if any(d==q) || q==0
        yes=0;
        return
    end
    d=[d q];
    n=(n-q)/10;
end
yes=1;
end

