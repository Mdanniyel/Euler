tic
p=primes(1e4);
p(p<1000)=[];
f=0;
for i=69:length(p)
    for j=i+1:length(p)
        d=p(j)-p(i);
        if ismember(p(j)+d,p) && all(sort(num2str(p(i)))==sort(num2str(p(j)))) && all(sort(num2str(p(i)))==sort(num2str(p(j)+d)))
            [p(i),p(j),p(j)+d]
            f=1;
            break
        end
    end
    if f==1
        break
    end
end
toc