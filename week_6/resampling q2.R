set.seed(123456)
theSample <- runif(25)
B = 5000
mu.hats <- numeric(B)
for(b in 1:B){
    reSample <- sample(theSample, size = length(theSample), replace = TRUE)
    mu.hats[b] <- mean(reSample)
}
sd(mu.hats)