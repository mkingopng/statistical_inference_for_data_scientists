# Matrix
x <- array(1:12, dim=c(3, 4))
is.matrix(x)
length(dim(x))

# Non-matrix
x <- array(1:24, dim=c(2, 3, 4))
is.matrix(x)
length(dim(x))