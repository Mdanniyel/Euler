function [ yes,l ] = isLychrel ( n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
l=[n];

for i=1:50
    r=reverse(n);
    if IsPalindrome(n+r)
        yes=0;
        break
    else
        n=n+r;
        l=[l n r];
        yes=1;
    end
end
l=sort(l);
end

