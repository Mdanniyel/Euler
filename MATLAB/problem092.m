tic
m=(0:9).^2;
n=m;
l89=[];
l1=[];
for j=2:7
    x=n;
    for i=2:10
        n=[n x+m(i)];
    end
end

for d=1:567
    t=[d];
    while d~=89||d~=1
        d=Dig(d);
        d=sum(d.^2);
        t=[t d];
        if d==89||any(l89==d)
            l89=[l89 t];
            break
        elseif d==1||any(l1==d)
            l1=[l1 t];
            break
        end
    end
end
l89=unique(l89);
l1=unique(l1);
res=length( n(ismember(n,l89)))
toc