%An irrational decimal fraction is created by concatenating the positive integers:

%0.123456789101112131415161718192021...

%It can be seen that the 12th digit of the fractional part is 1.

%If dn represents the nth digit of the fractional part, find the value of the following expression.

%d1 ª d10 ª d100 ª d1000 ª d10000 ª d100000 ª d1000000
clear all
clc
tic
max=185185; %((1e6-9-180-2700-36000-450000)/6)+100000;
str=num2str(1:max);
str(str==' ')=[];
d=[];
for i=0:6
    d=[d, str2num(str(10^i))];
end
prod(d)
toc