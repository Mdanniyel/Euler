tic
l=[];
d=[];
for i=10:98
    i1=mod(i,10);
    i10=(i-i1)/10;
    if i1==0
        continue
    end
    for j=i+1:99
        j1=mod(j,10);
        j10=(j-j1)/10;
        if i1==j10 && i/j==i10/j1
            l=[l j];
            d=[d i];
        end
    end
end
prod(l)/prod(d)

toc