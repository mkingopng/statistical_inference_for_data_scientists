x <- 1:12
# Using attr
attr(x, 'dim') <- c(3, 4)
x

x <- 1:12
# Using dim
dim(x) <- c(3, 4)
x

x <- 1:12
# Using array
x <- array(x, dim=c(3, 4))
x