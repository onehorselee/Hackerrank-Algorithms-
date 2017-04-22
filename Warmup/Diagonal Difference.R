# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- scan ("/dev/stdin", sep =" ")
n <- data[1]
m <- matrix (data[-1], nrow = n, ncol = n)
#rotate matrix clockwise 180 degrees
foo <- apply(m,1,rev)

cat (abs(sum(diag(m))-sum(diag(foo))))
