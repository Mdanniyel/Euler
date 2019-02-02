from myFunc import isPrime
import time
from myFunc import miller_rabin

def nextHarshad(n, sumDig, isStrong, a):
    m = n * 10
    s = sumDig
    for i in range(10):
        if m > limit:
            return a
        if isStrong and miller_rabin(m):
            a += [m]
        if m % s == 0:
            nextHarshad(m, s, miller_rabin(m // s), a)
        m += 1
        s += 1
    return a


t = time.time()

limit = 10**14
ans = []

for i in range(1, 10):
    ans += nextHarshad(i, i, False, [])
print(sum(ans))

print(time.time() - t)
