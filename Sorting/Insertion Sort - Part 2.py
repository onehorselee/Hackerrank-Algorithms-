n = int(input())
arr = [int(x) for x in input().split()]

i = 1
while(i < n):
    j=i-1
    while(j>=0):
        if(arr[j]>arr[i] and j>0):
            j=j-1
            continue 
        elif(arr[j]> arr[i] and j == 0): # when the pointer goes to the first element
            temp = arr[j]
            arr[j] = arr[i]
            del arr[i]
            arr.insert(1,temp)
            break
        else:        
            arr.insert(j+1,arr[i]) 
            del arr[(i+1)]
            break
        
    print(*arr)
    i = i+1 
