"""The number of divisors of 120 is 16.
In fact 120 is the smallest number having 16 divisors.

Find the smallest number with 2**500500 divisors.
Give your answer modulo 500500507.
"""
from myFunc import tic, toc, nPrime
from heapq import heappop, heappushpop

tic()
primes = nPrime(500500)
x, p = 1, heappop(primes)
for i in range(500500):
    x = x*p % 500500507
    p = heappushpop(primes, p**2)
print(x)
toc()
