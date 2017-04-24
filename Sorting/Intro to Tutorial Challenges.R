# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- readLines("stdin", warn = F)
v <- data[1]
n <- data[2]
s <- unlist(strsplit(data[3]," "))

cat(match(v,s)-1)
