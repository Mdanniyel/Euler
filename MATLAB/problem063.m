c=[];
for i=1:23
    a=ceil((10^(i-1))^(1/i));
    b=ceil((-1+10^i)^(1/i));
    d=b-a;
    if d>0
        c=[c d];
    end
end
sum(c)