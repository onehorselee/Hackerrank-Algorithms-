# Enter your code here. Read input from STDIN. Print output to STDOUT
nums <- scan ("/dev/stdin", sep = " ")
n <- nums[1]
h <- nums[-1]
cat(length(which(h == max(h))))
