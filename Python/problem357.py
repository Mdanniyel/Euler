from myFunc import primes
from math import floor
import time

limit = 10**8

prime, isprime = primes(limit + 1, True)
t = time.time()


def is_prime_generating(n):
    return all((n % d != 0 or isprime[d + n // d]) for d in range(2, floor(n ** 0.5) + 1))

# ans = 0
# for n in prime:
#     if (n - 1) % 4 == 0:
#         continue
#     if any([(n-1) % d**2 == 0 for d in prime[:floor(n ** 0.5) + 1]]):
#         continue
#     if is_prime_generating(n - 1):
#         ans+=(n-1)
ans = sum([n - 1 for n in prime if (n - 1) % 4 != 0 and is_prime_generating(n - 1)])
print(ans)
print(time.time() - t)