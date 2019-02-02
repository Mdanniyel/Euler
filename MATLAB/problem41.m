clear
tic

n=7;
N=perms(1:n)*(10.^[n-1:-1:0])';
result=max(N(isprime(N)))


toc