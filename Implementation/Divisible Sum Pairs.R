# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- scan("/dev/stdin", sep = " ")
n <- data[1]
k <- data[2]
nums <- data[c(3:length(data))]
count <- 0
for(i in 1:(n-1)){
    for(j in (i+1):n){
        if((nums[i] + nums[j]) %% k ==0) count <- count + 1
    }
}
    
cat(count)
