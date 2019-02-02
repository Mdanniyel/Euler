from myFunc import tic, toc, choose
import random

tic()

print(round(7 * (1 - choose(60, 20) / choose(70, 20)), 9))

toc()
