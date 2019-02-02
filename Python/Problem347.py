from myFunc import tic, toc, primes

tic()


def isfactor(n, i, j):
    n //= i * j
    while n % i == 0:
        n /= i
    while n % j == 0:
        n /= j
    return n == 1


n = 10 ** 7
p = primes(int(n / 2))
res = 0
for i in p:
    if i > n ** 0.5:
        break
    for j in p[p.index(i) + 1:]:
        if i * j > n:
            break
        x = (n // (i * j)) * i * j
        while not isfactor(x, i, j):
            x -= i * j
        res += x
print(res)
toc()
