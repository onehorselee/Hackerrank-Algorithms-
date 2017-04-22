# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- scan("/dev/stdin", sep = " ")
n <- data[1]
color <- data[-1]

df <- as.data.frame(table(color))
odd <- df$Freq[which(df$Freq %% 2 != 0 & df$Freq > 1)]
even <- df$Freq[which(df$Freq %% 2 == 0)]
pair <- sum(even)/2 + (sum(odd) - length(odd))/2
cat(pair)
