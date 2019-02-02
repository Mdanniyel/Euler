tic
m=0;
k=5;
for n=2:1e6
    s=int2str(n)-'0';
    if sum(s.^k)==n
        m=m+n;
    end
end
m
toc