function [ s ] = SumDiv( n )
e=[1];
for i=2:sqrt(n)
    if mod(n,i)==0
        e=[e i (n/i)];
    end
end
if (sqrt(n)-floor(sqrt(n)))==0
    e(end)=[];
end
s=sum(e);
end

