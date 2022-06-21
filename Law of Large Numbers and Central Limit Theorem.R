## Law of Large Numbers
n <- 500
x <- rbinom(n = n, size = 1, prob = 0.8)
# x <- rexp(n = n)
prop <- cumsum(x)/(1:n)
plot(prop, type = "l")
abline(h = 1, col = "blue")







## Central Limit Theorem
n <- 500
sample <- rbinom(n = n, size = 1, prob = 0.5)
mean(sample)

vals <- numeric(100000)
for(i in 1:100000){
  sample <- rbinom(n = n, size = 1, prob = 0.8)
  vals[i] <- mean(sample)
}
hist(vals, prob = TRUE, breaks = 25, xlab = expression(bar(x)))
curve(dnorm(x, mean = 0.8, sd = sqrt(0.8*0.2/n)), 
      add = TRUE, lwd = 2, col = "blue")
