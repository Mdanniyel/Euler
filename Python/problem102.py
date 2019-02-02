from myFunc import tic, toc

tic()


def cutting_points(x0, y0, x1, y1):
    if x1 - x0 != 0:
        y = -x0 * ((y1 - y0) / (x1 - x0)) + y0
    else:
        y = x0
    if y1 - y0 != 0:
        x = -y0 * ((x1 - x0) / (y1 - y0)) + x0
    else:
        x = y0
    if x < min(x0, x1) or x > max(x0, x1):
        x = 0
    if y < min(y0, y1) or y > max(y0, y1):
        y = 0
    return x, y


def cp(l):
    x0, y0, x1, y1, x2, y2 = l[0], l[1], l[2], l[3], l[4], l[5]
    ans = [False, False, False, False]
    x, y = cutting_points(x0, y0, x1, y1)
    if x > 0: ans[0] = True
    if x < 0: ans[1] = True
    if y > 0: ans[2] = True
    if y < 0: ans[3] = True
    x, y = cutting_points(x1, y1, x2, y2)
    if x > 0: ans[0] = True
    if x < 0: ans[1] = True
    if y > 0: ans[2] = True
    if y < 0: ans[3] = True
    x, y = cutting_points(x0, y0, x2, y2)
    if x > 0: ans[0] = True
    if x < 0: ans[1] = True
    if y > 0: ans[2] = True
    if y < 0: ans[3] = True
    return all(ans)


res = 0
with open('p102_triangles.txt') as f:
    # read_data = f.readlines()
    for line in f:
        if cp([int(n) for n in line[:-1].split(',')]):
            res += 1
    print(res)

toc()
