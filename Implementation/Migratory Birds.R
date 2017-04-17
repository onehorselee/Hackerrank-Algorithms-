# read data
nums <- scan ("/dev/stdin", sep = " ")
n <- nums[1]
x <- nums[-1]
a <- as.data.frame(table(x)) # store the frequencies in a dataframe

# a has two colums: "x" and "Freq" 
a.sorted <- a[order(a$Freq, decreasing = T),]
a.sorted$x <- as.numeric(a.sorted$x) 
# "x" column is a categorical variable, transform it into numeric
cat(sort(unique(x))[a.sorted$x[1]])

