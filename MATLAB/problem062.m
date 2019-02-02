tic
a=[4642:9999].^3;
b=[];
for i=1:length(a)
    b=[b; sort(Dig(a(i)))];
end
for i=1:length(a)-1
    c=[a(i)];
    bi=b(i,:);
    for j=i+1:length(a)
        bj=b(j,:);
        if all(bi==bj)
            c=[c a(j)];
        end
    end
    if length(c)>4
        break
    end
end
c(1)
toc