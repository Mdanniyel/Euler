from myFunc import tic, toc, gcd

tic()
limit = 100
isSquare = set([i ** 2 for i in range(1, 2 * limit)])

cg = [[0] * (limit + 1) for i in range(limit + 1)]
for a in range(1, limit + 1):
    for b in range(a, limit + 1):
        cg[a][b] = cg[b][a] = a * b - gcd(a, b)
toc()
res = 0
ans = 0
for a in range(1, limit + 1):
    for b in range(1, limit + 1):
        for c in range(1, limit + 1):
            for d in range(1, limit + 1):
                f = (cg[a][b] + cg[b][c] + cg[c][d] + cg[d][a]) / 2 + 1
                if f in isSquare:
                    ans += 1
                res += 1
                if res % 1000000 == 0:
                    print(res, a, b, c, d, ans)
print(ans)
toc()
