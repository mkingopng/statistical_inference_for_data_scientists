x <- 1:12
try(dim(x) <- c(3, 3)) # Error - dimensions too small

x <- 1:12
try(dim(x) <- c(3, 5)) # Error - dimensions too big