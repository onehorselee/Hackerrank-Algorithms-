# Enter your code here. Read input from STDIN. Print output to STDOUT
string <- scan("/dev/stdin", sep = " ",what = character())
letters <- unlist(strsplit(string, ""))

i <- 1
repeat{
  if(i>=length(letters)) break  

  if(letters[i] == letters[i+1]) {
    letters = letters[-c(i,i+1)]
    
      while(i>1 && i<=length(letters)){
       if( letters[i-1] == letters[i]) 
           letters = letters[-c(i-1,i)] 
           i = i-1         
      }
      
  } else{
    i = i+1
  }
  
}

if(length(letters) == 0) {cat("Empty String")
  }else {
    cat(paste(letters,collapse = ""))
  }
