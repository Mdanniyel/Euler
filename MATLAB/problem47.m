tic

n=1e5;
while 1
    if length(unique(factor(n+3)))~=4
        n=n+4;
        continue
    end
    if length(unique(factor(n+2)))~=4
        n=n+3;
        continue
    end
    if length(unique(factor(n+1)))~=4
        n=n+2;
        continue
    end
    if length(unique(factor(n)))~=4
        n=n+1;
        continue
    end
    [n,n+1,n+2]
    break
end

toc