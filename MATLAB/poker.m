function [ n ] = poker( s )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n=0;
q=['1','2','3','4','5','6','7','8','9','T','J','Q','K','A'];
suit=max(s(2:2:end))==min(s(2:2:end));
val=s(1:2:end);
v=[];
for i=1:5
    b=find(val(i)==q);
    v=[v b];
end
v=sort(v);
c=Count(v);
pair=any((c(:,2)==2));
hpair=c(find(c(:,2)==2),1);
three=any((c(:,2)==3));
hthree=c(find(c(:,2)==3),1);
twopairs=sum(c(:,2)==2)==2;
four=any((c(:,2)==4));
hfour=c(find(c(:,2)==4),1);
consecutive= length(unique(v))==5 && max(v)==min(v)+4;

if suit && min(v)>9 && length(unique(val))==5 %Royal Flush
    n=1e6;
elseif suit && min(v)+4==max(v) && length(unique(val))==5 %Straight Flush
    n=9e5;
elseif four %Four of a Kind
    n=8e5;
    n=n+hfour*1000;
elseif three && pair
    n=7e5;
    n=n+hthree*1000;
    n=n+hpair*10;
elseif suit
    n=6e5;
elseif consecutive
    n=5e5;
elseif three
    n=4e5;
    n=n+hthree*1000;
elseif twopairs
    n=3e5;
    c(c(:,2)~=2,:)=[];
    n=n+max(c(:,1))*1000;
    n=n+min(c(:,1))*10;
elseif pair
    n=2e5;
    n=n+hpair*1000;
end
n=n+max(v);
end

