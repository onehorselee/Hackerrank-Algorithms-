import sys
n = int(input())
arr = [int(x) for x in input().split()]
e = arr[n-1]

i = n-2
while(i>=0):
    if(arr[i]==e):
        print(arr)
        break
    elif(arr[i]>e):
        arr[i+1] = arr[i]
        i = i-1
        print(*arr)
    elif(arr[i]<e):
        arr[i+1] = e
        print(*arr)
        break
