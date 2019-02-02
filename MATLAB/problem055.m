tic
c=0;
for i=10:1e4
    [yes]=isLychrel(i);
    if yes==1
        c=c+1;
    end
end
c
toc