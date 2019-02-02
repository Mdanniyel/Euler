function [ r ] = Phi( n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%f=unique(factor(n));
r=prod([n, 1-(1./(unique(factor(n))))]);
end

