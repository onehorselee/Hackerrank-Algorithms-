def insertion_sort(arr, n):
    i = 1
    while(i < n):
        j=i-1
        while(j>=0):
            if(arr[j]>arr[i] and j>0):
                j=j-1
                continue 
            elif(arr[j]> arr[i] and j == 0): # when the J pointer goes to the first element in the array
                temp = arr[j]
                arr[j] = arr[i]
                del arr[i]
                arr.insert(1,temp)
                break
            else:        
                arr.insert(j+1,arr[i]) 
                del arr[(i+1)]
                break
        i = i+1 
    return arr

        
        
m = int(input().strip())
ar = [int(i) for i in input().strip().split()]
insertion_sort(ar,m)
print(" ".join(map(str,ar)))
