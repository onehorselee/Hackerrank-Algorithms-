# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- scan("/dev/stdin", sep = " ")
len <- data[1]
data <- data[-1]

break.m = 0
break.l = 0

for (i in 2:len) {
    temp.data <- data[c(1:(i-1))]
    if(data[i] > max(temp.data)) break.m = break.m +1
    if(data[i] < min(temp.data)) break.l = break.l +1
}
        
cat(break.m, break.l)
