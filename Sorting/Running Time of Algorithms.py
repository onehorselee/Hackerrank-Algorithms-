n = int(input())
arr = [int(x) for x in input().split()]

count = 0
i = 1
while(i < n):
    j=i-1
    while(j>=0):
        if(arr[j]> arr[i] and j>0):
            j=j-1
            continue 
        elif(arr[j]> arr[i] and j == 0): 
            temp = arr[j]
            arr[j] = arr[i]
            del arr[i]
            arr.insert(1,temp)
            count = count + (i - j)
            break
        elif(arr[j] == arr[i] and j == i-1):
            break
        else: # arr[j] < arr[i]
            if(j != i-1): count = count + (i - j - 1) 
            arr.insert(j+1,arr[i]) 
            del arr[(i+1)]            
            break   
        
    i = i+1 
    
    
print(count)
