from myFunc import tic, toc
import itertools as iter

tic()

a_dic = {}
b_dic = {}
a = list(iter.product([1, 2, 3, 4, 5, 6], repeat=6))
b = list(iter.product([1, 2, 3, 4], repeat=9))
for i in b:
    s = sum(i)
    if b_dic.get(s, False):
        b_dic[s] += 1
    else:
        b_dic[s] = 1
for i in a:
    s = sum(i)
    if a_dic.get(s, False):
        a_dic[s] += 1
    else:
        a_dic[s] = 1
s_a = sum(a_dic.values())
s_b = sum(b_dic.values())
a_win = 0
b_win = 0
t = 0
for i in range(6, 37):
    for j in range(9, 37):
        if j > i:
            b_win += b_dic[j] / s_b * a_dic[i] / s_a
        elif i > j:
            a_win += b_dic[j] / s_b * a_dic[i] / s_a
        elif j == i:
            t += b_dic[j] / s_b * a_dic[i] / s_a

print(round(b_win, 7))
toc()
