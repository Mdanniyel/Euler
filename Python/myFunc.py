from random import randrange
import time


def tic():
    global zman
    zman = time.time()


def toc():
    print('running time:', (time.time() - zman) * 1000, 'ms')


def isPrime(n):
    if n in [2, 3, 5]:
        return True
    if n % 2 == 0 or n % 3 == 0 or n % 5 == 0:
        return False
    for d in range(7, int((n ** 0.5) + 1), 2):
        if n % d == 0:
            return False
    return True


def primes(limit, list=False):
    a = [True] * limit  # Initialize the primality list
    a[0] = a[1] = False
    p = []
    for (i, isprime) in enumerate(a):
        if isprime:
            p.append(i)
            for n in range(i * i, limit, i):  # Mark factors non-prime
                a[n] = False
    if list:
        return p, a
    return p


def list_primality(limit):
    a = [True] * limit  # Initialize the primality list
    a[0] = a[1] = False
    for (i, isprime) in enumerate(a):
        if isprime:
            for n in range(i * i, limit, i):  # Mark factors non-prime
                a[n] = False
    return a


def surely_composite(n, d, s, a):
    'n-1 == 2**s * d'
    x = pow(a, d, n)  # a^d mod n, efficiently
    if x == 1 or x == n - 1:
        return False
    for _ in range(s):
        x = pow(x, 2, n)
        if x == 1: return True
        if x == n - 1: return False
    return True


def miller_rabin(n, number_of_rounds=3):
    if n in [2, 3, 5]:
        return True
    (d, s) = n - 1, 0
    while d % 2 == 0:
        (d, s) = (d // 2, s + 1)

    for round in range(number_of_rounds):
        if surely_composite(n, d, s, randrange(2, n - 1)):
            return False

    # 'pascal's triangle' implementation of binomial function
    # probabley not very efficient
    return True


binomCache = dict()


def choose(n, k):
    if n < 0 or k < 0 or k > n:
        return 0
    if n == 0 or k == 0:
        return 1
    if (n, k) in binomCache:
        return binomCache[(n, k)]
    answer = choose(n - 1, k) + choose(n - 1, k - 1)
    binomCache[(n, k)] = answer
    return answer


def fibonacci(n):
    a, b = 1, 1
    for i in range(2, n):
        a, b = b, b + a
    return b


def n2roman(n):
    num_map = [(1000, 'M'), (900, 'CM'), (500, 'D'), (400, 'CD'), (100, 'C'), (90, 'XC'),
               (50, 'L'), (40, 'XL'), (10, 'X'), (9, 'IX'), (5, 'V'), (4, 'IV'), (1, 'I')]
    r = ''

    while n > 0:
        for i, rom in num_map:
            while n >= i:
                r += rom
                n -= i
    return r


def roman2n(s):
    num_map = [(1, 'I'), (4, 'IV'), (5, 'V'), (9, 'IX'), (10, 'X'), (40, 'XL'), (50, 'L'),
               (90, 'XC'), (100, 'C'), (400, 'CD'), (500, 'D'), (900, 'CM'), (1000, 'M')]
    n = 0

    while len(s) > 0:
        for i, rom in num_map:
            if len(rom) == 1:
                while s[-1:] == rom:
                    s = s[:-1]
                    n += i
            elif len(rom) == 2:
                while s[-2:] == rom:
                    s = s[:-2]
                    n += i
    return n


def forPrime(stop, start=0):
    if start > 0:
        start, stop = stop, start
    with open('forPrime.txt', 'r') as f:
        res = []
        for x in f:
            n = int(x.strip())
            if n < start:
                continue
            elif n > stop:
                break
            else:
                res.append(n)
    return res


def nPrime(stop, start=0):
    if start > 0:
        start, stop = stop, start
    with open('forPrime.txt', 'r') as f:
        res = []
        i = 0
        for x in f:
            n = int(x.strip())
            if i < start:
                i += 1
                continue
            elif i >= stop:
                return res
            else:
                res.append(n)
            i += 1
    return res


def prod(list):
    res = 1
    for n in list:
        res *= n
    return res


def gcd(a, b):
    if b == 0:
        return a
    else:
        return gcd(b, a % b)
