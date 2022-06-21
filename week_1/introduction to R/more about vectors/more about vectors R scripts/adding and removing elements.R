x <- list(a=2L, b=3.14, c='Hello', d=TRUE, e=c(1,2), f=log)
x['g'] <- list(1:5) # Must be a list
x[['h']] <- 1:5 # Can be any object
x