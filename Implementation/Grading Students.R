# Enter your code here. Read input from STDIN. Print output to STDOUT
nums <- scan ("/dev/stdin", sep = " ")
n <- nums[1]
scores <- nums[-1]

for (i in 1:n) {
    if (scores[i] >= 38) {
    temp <-  scores[i] + (5 - (scores[i] %% 5))
    if (temp - scores[i] < 3) scores[i] = temp
  }   
}
    
cat(scores, sep = "\n")
