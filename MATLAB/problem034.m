tic
fac=[];
for n=5:8
for i=factorial(n):sum(factorial(0:n))
    s=int2str(i)-'0';
    if sum(factorial(s))==i
        fac=[fac i];
    end
end
end
toc