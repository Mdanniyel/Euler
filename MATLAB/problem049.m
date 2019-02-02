tic
p=primes(1e4);
p(p<1000)=[];
f=0;
d=3330;
l=[];
for i=1:302
    res=[p(i),p(i)+d,p(i)+2*d];
    if all(ismember(res,p))&&IdentityDigit(res)
        l=[l res];
    end
end
l(4:end)
toc