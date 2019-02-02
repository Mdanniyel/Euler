# with open('primes1.txt', 'r') as f:
#     with open('forPrime.txt', 'w') as w:
#         p = f.read().splitlines()
#         p = p[4:]
#         for line in p:
#             for s in line.split():
#                 w.write(s + '\n')

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
