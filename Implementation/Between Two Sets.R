# Enter your code here. Read input from STDIN. Print output to STDOUT

data <- scan("/dev/stdin", sep = " ")
len1 <- data[1]
len2 <- data[2]
set1 <- data[c(3:(3+len1-1))]
set2 <- data[c((3+len1):length(data))]


mylist <- c(set1, set2)
mylist <- sort(mylist,decreasing = T)
max <- mylist[1]

isValidA <- integer()
isValidB <- integer()
for(i in max(set1): min(set2)){   
  if(sum(i %% set1 == 0) == len1) isValidA <- append(isValidA, i)
  if(sum(set2 %% i == 0) == len2) isValidB <- append(isValidB, i)    
}

cat(length(intersect(isValidA,isValidB)))