tic
z=0;
r=[];
for i=1:50
    for j=i:1e4/i
        l=[int2str(i),int2str(j),int2str(i*j)];
        if length(l)>9
            break
        end
        if length(l)<9
            continue
        end
        if sort(l)=='123456789'
            r=[r;i*j];
        end
    end
end
sum(unique(r))
toc