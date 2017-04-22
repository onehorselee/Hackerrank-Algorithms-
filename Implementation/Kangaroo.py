#!/bin/python3

import sys


x1,v1,x2,v2 = input().strip().split(' ')
x1,v1,x2,v2 = [int(x1),int(v1),int(x2),int(v2)]

def checkit(sum1,sum2,v1,v2):
    for i in range(0,n):
        sum1 = sum1 + v1
        sum2 = sum2 + v2
        if (sum1==sum2):
            case= True
            break
        else:
            case=False
    return case
sum1 = x1 ; sum2 = x2 ; n = 100000
ans = checkit(sum1,sum2,v1,v2)
if(ans==False):
    print("NO")
else: print("YES")
