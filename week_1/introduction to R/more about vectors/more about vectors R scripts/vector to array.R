x <- 1:12
# Using attr
attr(x, 'dim') <- c(3, 4)
attr(x, 'dim')
is.array(x)

x <- 1:12
# Using dim
dim(x) <- c(3, 4)
dim(x)
is.array(x)