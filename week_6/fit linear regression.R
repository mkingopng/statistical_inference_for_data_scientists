set.seed(123456)
xData <- rnorm(50)
yData <- 1 + 0.5*xData + rnorm(50)
lm.mod <- lm(yData ~ xData)
summary(lm.mod)