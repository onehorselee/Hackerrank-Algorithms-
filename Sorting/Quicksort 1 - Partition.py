n = int(input())
arr = [int(x) for x in input().split()]

p = arr[0]
left = []
right = []
equal = []

for x in arr:
    if(x < p): 
        left.append(x)
    elif(x > p): 
        right.append(x)
    else: 
        equal.append(x)
 
print(*left, *equal, *right)
