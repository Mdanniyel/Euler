tic
o=0;
for i=9:9876
    l=[];
    for j=1:5
        n=int2str(i*j);
        l=[l,n];
        if length(l)>9
            break
        elseif length(l)==9 && all(sort(l)=='123456789')
            o=max(o,str2num(l));
        end
    end
end
o
toc