from myFunc import tic, toc, n2roman, roman2n

tic()

with open('p089_roman.txt', 'r') as f:
    temp = f.read().splitlines()

s = 0
for r in temp:
    s += len(r) - len(n2roman(roman2n(r)))
print(s)

toc()
