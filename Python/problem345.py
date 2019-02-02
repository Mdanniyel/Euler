from myFunc import tic, toc
from munkres import Munkres

tic()

matrix = []
with open('345.txt', 'r') as f:
    t = f.read().splitlines()
    for line in t:
        matrix.append([-int(line[i:i + 4]) for i in range(0, len(line), 4)])

m = Munkres()
print(-sum([matrix[i][j] for i,j in m.compute(matrix)]))

toc()
