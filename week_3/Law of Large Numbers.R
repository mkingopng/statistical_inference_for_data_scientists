## Law of Large Numbers
n <- 500
x <- rbinom(n = n, size = 1, prob = 0.5)
# x <- rexp(n = n)
prop <- cumsum(x)/(1:n)
plot(prop, type = "l")
abline(h = 1, col = "blue")
