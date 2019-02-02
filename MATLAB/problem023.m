tic
cc
lim=20161;
a=[];
S=[1:4];
for i=5:lim
    if i<SumDiv(i)
        a=[a i];
    end
    b=i-a;
    if not(any(ismember(b,a)))
        S=[S i];
    end
end
sum(S)
toc    