# Enter your code here. Read input from STDIN. Print output to STDOUT
input <- readLines("stdin", warn=FALSE)
n <- input[1]
s <- input[-1]

check <- function(s){
  
  x <- unlist(strsplit(s,""))
  test <- unlist(strsplit("hackerrank", ""))
  
  i <- 1
  j <- 1 
  count <- 0
  
  while(i <= length(x) && j <= length(test)){
       if(x[i] == test[j]) {
         j = j+1
         count <- count+1
       }
       
       i <- i+1
    }
  
   if(count == length(test)) cat("YES", "\n") else cat("NO","\n")   
        
    
}

for ( i in 1:length(s)) check(s[i])


