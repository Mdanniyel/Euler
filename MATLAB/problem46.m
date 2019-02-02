n=3;
while true
    n=n+2;
    if isprime(n)
        continue
    end
    k=1:sqrt((n-3)/2);
    K=2.*(k.^2);
    if not(any(isprime(n-K)))
        n
        return
    end
end