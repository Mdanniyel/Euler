from myFunc import tic, toc

tic()


def toBase10(b, i):
    return sum([i ** x for x in range(b)])


n = 10 ** 12
b = 3
ans = set([1])
x = toBase10(b, 2)
i = 2

while x < n:
    while x < n:
        ans.add(x)
        i += 1
        x = toBase10(b, i)
    b += 1
    i = 2
    x = toBase10(b, i)
print(sum(ans))

toc()