x <- c(2, 1, 5, 2, 4, 5, 1, 2)
x <- factor(x)
# This is ok
x[1] <- 5
x
# This is not
x[1] <- 7