data <- scan("/dev/stdin", sep = " ", what = list(" "," "))
string <- data[[2]]         
letters.all <- unlist(strsplit(string, ""))
letters.unique <- unique(letters.all)


# if string has n unique letters, take out n-2 letters for experiment
# the total number of all combinations
# store all the combinations in a dataframe
n <- length(letters.unique)

if(n < 2 | min(letters.unique) == max(letters.unique)) {
    cat(0)}
else{
    n.comb <- choose(n,n-2) 
combine.index <-combn(n,n-2) 


remove <- character()
alternating.length <- c("0")
for(i in 1:n.comb){
  #set remove 
  remove.index <- combine.index[,i]
  remove <- letters.unique[remove.index]
  
  #remove the selected n-2 letters
  letters.remain <- letters.all[!letters.all %in% remove]
    
  #check if the remaining part is alternating
    #take out all the odd index numbers, check if there are the same
    #take out all the even index numbers, check if there are the same
  even.index <- seq(length(letters.remain)/2)*2
  odd <- letters.remain[-even.index]
  even <- letters.remain[even.index]
  if(min(odd) == max(odd) && min(even) == max(even)){
    #print(letters.remain)
    alternating.length <- append(alternating.length,length(letters.remain))
  }
  
}


cat(max(alternating.length))
}
