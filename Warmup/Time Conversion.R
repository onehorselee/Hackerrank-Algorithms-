# Enter your code here. Read input from STDIN. Print output to STDOUT
time <- scan("/dev/stdin", what=list('character'))
time.split <- strsplit(time[[1]][1], ":")
time <- paste (time.split[[1]][1],time.split[[1]][3],time.split[[1]][3], collapse = ":")

if (grepl("am", time.split[[1]][3], ignore.case = T) == TRUE ) {
    time.split[[1]][3] <- gsub (pattern = "am", replacement = "",x = time.split[[1]][3], ignore.case = T) #remove am
    
    if ("12"== time.split[[1]][1]){
        time.split[[1]][1] <- "00"
        temp <- c(time.split[[1]][1],time.split[[1]][2],time.split[[1]][3])
        cat(paste(temp, collapse = ":"))
    } else {
        temp <- c(time.split[[1]][1],time.split[[1]][2],time.split[[1]][3])
        cat(paste(temp, collapse = ":"))  
    }
    
} else if ( (grepl("pm", time.split[[1]][3],ignore.case = T) == TRUE )){
    time.split[[1]][3] <- gsub (pattern = "pm", replacement = "", x = time.split[[1]][3], ignore.case = T) # remove pm
    if ("12"!= time.split[[1]][1]){
        time.split[[1]][1] <- as.character(as.numeric(time.split[[1]][1]) + 12)
        temp <- c (time.split[[1]][1],time.split[[1]][2],time.split[[1]][3])
        cat (paste (temp, collapse = ":"))
        
    } else {
        temp <- c (time.split[[1]][1],time.split[[1]][2],time.split[[1]][3])
        cat (paste (temp, collapse = ":"))
    }
    
}
