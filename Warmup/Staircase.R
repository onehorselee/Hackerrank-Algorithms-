# Enter your code here. Read input from STDIN. Print output to STDOUT
n = scan("/dev/stdin", sep = " ")
for (i in 1:n) {
    tem<- paste(strrep(" ", n-i), strrep("#",i), collapse = "")
    cat(tem,sep = "\n")
}
