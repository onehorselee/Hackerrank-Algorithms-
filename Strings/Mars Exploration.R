# Enter your code here. Read input from STDIN. Print output to STDOUT
s <- scan("/dev/stdin", what = list(" "))
s <- s[[1]]

n <- nchar(s)/3
received <- unlist(strsplit(s, ""))
sent <- rep(c("S","O","S"), n)
diff <- sum(! received == sent)
cat(diff)
