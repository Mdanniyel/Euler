tic
c=0;
for a=99:-1:90
    l=[a];
    while l(end)>9
        d1=mod(l(end),10);
        d10=l(end)-d1;
        l(end)=d1;
        l=[l d10/10];
    end
    for j=1:98
        l=l*a;
        i=1;
        while any(l>9)
            d1=fix(mod(l(i),10));
            d10=(l(i)-d1)/10;
            l(i)=d1;
            if length(l)<i+1
                l=[l,0];
            end
            l(i+1)=l(i+1)+(d10);
            i=i+1;
        end
        s=sum(l);
        if s>c
            c=s;
        end
    end
end
c
toc