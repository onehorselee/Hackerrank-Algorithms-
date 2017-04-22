# Enter your code here. Read input from STDIN. Print output to STDOUT
s <- scan("/dev/stdin", sep = "",what = character())
letters <- unlist(strsplit(s, ""))
count = 0
for(i in 1:length(letters)){
  if(letters[i] == toupper(letters[i])) count = count +1
}

cat(count+1)
