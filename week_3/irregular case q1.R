## Suppose we observe the data vector
x <- c(3,1,4,3,5,7)
n <- length(x)
L <- function(theta) theta^n * ifelse(min(x) > theta,1,0)
curve(L,0,3)