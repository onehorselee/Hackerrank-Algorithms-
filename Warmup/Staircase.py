#!/bin/python

n = int(raw_input().strip())
for i in range(n):
    print (" " * (n-i-1)) + ("#" * (i+1))
