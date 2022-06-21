A <- matrix(c(2, 1, 4, 3), nrow=2, ncol=2)
B <- matrix(c(8, 6, 12, 7), nrow=2, ncol=2)
X <- solve(A, B)
X

# Check the answer:
A %*% X