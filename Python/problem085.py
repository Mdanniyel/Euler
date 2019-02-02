from myFunc import tic, toc

tic()
ans = 0
for n in range(2, 100):
    for m in range(n + 1, 100):
        s = (n + n ** 2) / 2 * (m + m ** 2) / 2
        if abs(ans - 2e6) > abs(s - 2e6):
            ans = s
            res = [n, m]
        if s > 2e6: break
print(res[0] * res[1])
toc()
