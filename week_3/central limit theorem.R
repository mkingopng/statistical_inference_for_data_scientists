## Central Limit Theorem
n <- 500
sample <- rbinom(n = n, size = 1, prob = 0.5)
mean(sample)

vals <- numeric(100000)
for(i in 1:100000){
  sample <- rbinom(n = n, size = 1, prob = 0.5)
  vals[i] <- mean(sample)
}
hist(vals, prob = TRUE, breaks = 25, xlab = expression(bar(x)))
curve(dnorm(x, mean = 0.5, sd = sqrt(0.5*0.5/n)),
      add = TRUE, lwd = 2, col = "blue")