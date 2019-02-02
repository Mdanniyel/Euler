def poly(x, n):
    return int(0.5 * n * ((x - 2) * n - (x - 4)))


pol = []
for x in range(3, 9):
    for n in range(1, 141):
        po = poly(x, n)
        if po > 999 and po < 10000:
            pol.append((x, po))

dic = {}
for i in pol:
    dic[i] = []
    for j in pol:
        if i[1] % 100 == j[1] // 100 and i[0] != j[0] and i != j:
            dic[i] = dic[i] + [j]


def next(types, data):
    if len(types) == 6 and data[0] // 100 == data[-1] % 100:
        print(data, sum(data))
    else:
        for t, n in dic.get((types[-1], data[-1]), []):
            if t not in types:
                next(types + [t], data + [n])


for type, data in dic:
    next([type], [data])
