d = 12000
s = []
for d in range(2, d + 1):
    for n in range(int(d/3 + 0.99999), int(d/2 + 0.99999)):
        # print(d, n)
        if n / d > 1 / 3 and n / d < 1 / 2:
            s.append(n / d)
s = set(s)
print(len(s))