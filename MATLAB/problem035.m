tic

n=1e6;
b=[1];
for i=primes(n)
    if find(b==i)
        continue
    end
    b=[b CircularPrime(i)];
end
answer=length(unique(b))

toc