tic
p=[0,primes(1e6)];
pc=cumsum(p);
c=0;
for i=1e3:-1:2
    for j=1:i-c
        pr=pc(i)-pc(j);
        if i-j<c || pr>max(p)
            break
        end
        if ismember(pr,p)
            c=i-j;
            res=[i,j,pr,c];
            break
        end
    end
end
res(3)
toc