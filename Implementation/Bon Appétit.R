# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- scan("/dev/stdin", sep = " ")
n <- data[1]
k <- data[2] + 1
item.cost <- data[c(3:(3+n-1))]
charged <- data[length(data)]

actual <- sum(item.cost[-k])/2
if(charged == actual) cat("Bon Appetit") else cat(charged-actual)
