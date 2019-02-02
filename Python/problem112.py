from myFunc import tic, toc

tic()


def isBouncy(n):
    s = list(str(n))
    sr = sorted(s)
    if s == sr or s[-1::-1] == sr: return False
    return True


s = 0
for i in range(100, 10 ** 7):
    if isBouncy(i):
        s += 1
        if s / i >= 0.99:
            print(i)
            break

toc()
