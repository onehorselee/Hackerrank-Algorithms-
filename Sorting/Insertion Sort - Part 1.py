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
        print(*arr)
        if(i==0):
            arr[i]=e
            print(*arr)
            break
        else:
            i = i-1  
    elif(arr[i]<e):
        arr[i+1] = e
        print(*arr)
        
        if(i==0):
            arr[0]=e
            break
        
        break
