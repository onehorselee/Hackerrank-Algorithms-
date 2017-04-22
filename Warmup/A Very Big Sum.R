# Enter your code here. Read input from STDIN. Print output to STDOUT
options(scipen=999)
data <- scan("/dev/stdin", sep = " ")

sum <- 0
for (i in 2: length(data)){
    sum <- sum + data[i]
}

cat (sum)
    
