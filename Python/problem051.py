from myFunc import primes
from myFunc import isPrime
from datetime import datetime
startTime = datetime.now()


def prime8(prime, rd, pri):
    c=0
    for dig in '0123456789':
        n = int(prime.replace(rd, dig))
        if n>100000 and isPrime(n):
            c+=1
    return c==8

pri = primes(1000000)
for p in pri:
    if p>100000:
        s = str(p)
        lastDig = s[-1]
        if s.count('0')==3 and prime8(s, '0', pri) or s.count('1') and lastDig != '1' and prime8(s, '1', pri) or s.count('2') == 3 and prime8(s, '2', pri):
            print(p)
            break

print(datetime.now() - startTime)