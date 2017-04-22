# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- scan("/dev/stdin", sep = " ");

s <- data[1]
t <- data[2]
a <- data[3]
b <- data[4]
m <- data[5]
n <- data[6]
apple <- data[c(7:(7+m-1))]
orange <- data[c((7+m):length(data))]

 cat(length(apple[which((a+apple)<=t & (a+apple)>=s)]),
     length(orange[which((b+orange) <=t & (b+orange)>=s)]),
     sep = "\n")
