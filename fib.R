args <- commandArgs(trailingOnly = TRUE)
N <- as.integer(args[1])

Fibonacci <- function(n){
    if (n==0) return(0)
    if (n %in% c(1,2)) return(1)
    return (Fibonacci(n-1) + Fibonacci(n-2))
}

print(Fibonacci(N))
