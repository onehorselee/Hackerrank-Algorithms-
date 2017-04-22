#!/bin/python3

import sys


n = int(input())
arr = list(map(int, input().split()))
maxscore = minscore = arr[0]
count_max = count_min = 0
for i in range(1, len(arr)):
    if arr[i] > maxscore:
        count_max += 1
        maxscore = arr[i]
    elif arr[i] < minscore:
        count_min += 1
        minscore = arr[i]
print(count_max, count_min)
