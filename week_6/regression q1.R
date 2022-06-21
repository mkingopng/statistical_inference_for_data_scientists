set.seed(123456)
xData <- rnorm(50)
yData <- 1 + 0.5*xData + rnorm(50)

B <- 1000
slopesBoot <- numeric(B)
for(b in 1:B){
  index <- sample(1:50, replace = TRUE)
  lm.mod <- lm(yData[index] ~ xData[index])
  slopesBoot[b] <- lm.mod$coefficients[2]
}
mean(slopesBoot)
sd(slopesBoot)