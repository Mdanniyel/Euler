%The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

%Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

%NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
tic
p=primes(1e6);
c=0;
i=5;
s=[];
while c<11
    if IsTruncatablePrimes(p(i))
        s=[s, p(i)];
        c=c+1;
    end
    i=i+1;
end
sum(s)
toc