from myFunc import isPrime, primes, miller_rabin
import itertools as iter
import time

t = time.time()

def all_prime(c):
    return all(miller_rabin(int(str(p[0]) + str(p[1]))) for p in iter.permutations(c, 2))


def make_c(c):
    if len(c) == 5:
        return c
    for p in pri:
        if p > c[-1] and all_prime(c + [p]):
            new_c = make_c(c + [p])
            if new_c:
                return new_c
    return False


pri = primes(10000)
c = []
while not c:
    c = make_c([pri.pop(0)])

print(time.time() - t)