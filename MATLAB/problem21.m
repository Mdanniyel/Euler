tic
a=0;
for i=200:10000
    if SumDiv(SumDiv(i))==i&&SumDiv(i)~=i
        a=a+i;
        i
    end
end
a
toc