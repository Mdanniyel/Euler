tic

amax=0;bmax=0;nmax=0;
p=primes(1000);
for a=-999:2:999
    for i=1:length(p)
        n=0;
        while isprime(abs(n*n+a*n+p(i)))
            n=n+1;
        end
        if n>nmax 
            amax=a;
            bmax=p(i);
            nmax=n;
        end
    end
end
amax,bmax
toc