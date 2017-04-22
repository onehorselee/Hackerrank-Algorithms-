# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- scan("/dev/stdin", sep=" ")
A <- data[c(1:(length(data)/2))]
B <- data[-c(1:(length(data)/2))]

a.score <- 0
b.score <- 0
for (i in 1:(length(data)/2)){
    if (A[i] > B[i]){
    a.score <- a.score + 1
    } else if (A[i] < B[i]) {
      b.score <- b.score +1
    } else {
        a.score <- a.score + 0
        b.sore <- b.score + 0
    }
          
   }
cat (a.score,b.score)
