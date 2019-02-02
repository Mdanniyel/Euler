function [ yes ] = IsPalindrome( n )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
s=num2str(n);
if s==flip(s)
    yes=1;
else
    yes=0;
end

end

