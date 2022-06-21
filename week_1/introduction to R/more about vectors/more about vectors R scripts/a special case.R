A <- matrix(c(2, 1, 4, 3), nrow=2, ncol=2)
A.INV <- solve(A)
A.INV
A %*% A.INV