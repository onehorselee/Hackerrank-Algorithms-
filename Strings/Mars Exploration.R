# Enter your code here. Read input from STDIN. Print output to STDOUT
s <- scan("/dev/stdin", what = list(" "))
s <- s[1]
sub <- substring(s, seq(1,nchar(s),3), seq(3,nchar(s),3))
out <- match(sub,"SOS",nomatch =0)
cat(length(sub)-sum(out))
