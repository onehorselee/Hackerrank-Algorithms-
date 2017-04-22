# Enter your code here. Read input from STDIN. Print output to STDOUT
nums <- scan("/dev/stdin", sep = " ")
x1 <- nums[1]
v1 <- nums[2]
x2 <- nums[3]
v2 <- nums[4]

k = (x2-x1)/(v1-v2)
a = (x2-x1)%%(v1-v2)
if(k>=0 & a==0) cat("YES") else cat("NO")
