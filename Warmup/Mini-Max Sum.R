# Enter your code here. Read input from STDIN. Print output to STDOUT
nums <- scan ("/dev/stdin", sep = " ")
cat((sum(nums)-max(nums)), (sum(nums)-min(nums)))
