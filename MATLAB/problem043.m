%The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9 in some order, but it also has a rather interesting sub-string divisibility property.

%Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:

%d2d3d4=406 is divisible by 2
%d3d4d5=063 is divisible by 3
%d4d5d6=635 is divisible by 5
%d5d6d7=357 is divisible by 7
%d6d7d8=572 is divisible by 11
%d7d8d9=728 is divisible by 13
%d8d9d10=289 is divisible by 17
%Find the sum of all 0 to 9 pandigital numbers with this property.
tic
p=perms(0:9);
p(mod(p(:,4),2)~=0,:)=[];
d3=mod((p(:,3)+p(:,4)+p(:,5)),3)==0;
p=p(d3,:);
d5=(p(:,6)==5)+(p(:,6)==0);
p=p(d5==1,:);
d7=mod((p(:,5).*10+p(:,6)-p(:,7).*2),7)==0;
p=p(d7,:);
d11=mod((p(:,6)-p(:,7)+p(:,8)),11)==0;
p=p(d11,:);
d13=mod((p(:,7).*100+p(:,8).*10+p(:,9)),13)==0;
p=p(d13,:);
d17=mod((p(:,8).*100+p(:,9).*10+p(:,10)),17)==0;
p=p(d17,:);
l=[];
for i=1:10
    l=[l, p(:,i).*10^(11-i)];
end
sum(sum(l))
toc