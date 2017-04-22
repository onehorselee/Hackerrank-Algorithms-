# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- scan("/dev/stdin", sep = " ")

n <- data[1]
nums <- data[c(2:(1+n))]
d <- data[n+2]
m <- data[n+3]

# m consecutive numbers whose sum equals d

count <- 0
for(i in 1:(n-m+1)){
 if(sum(nums[c(i:(i+m-1))]) == d) count <- count + 1   
}

cat(count)
