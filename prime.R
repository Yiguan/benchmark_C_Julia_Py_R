args <- commandArgs(trailingOnly = TRUE)
N <- as.integer(args[1])

for(i in 2:N)
{
    prime <- TRUE
    for (j in 2:(i-1)) 
    {
        res = i %% j
        if(res==0) {
          prime <- FALSE
          break
          }
    }
    if(prime) print(i)
}
