set.seed(1)
theSample <- runif(25)
bootIt <- function(theSample, n = 10){
    theta.vals <- numeric(n)
    for(i in 1:10){
        reSample <- sample(theSample, size = length(theSample), replace = TRUE)
        theta.vals[i] <- sd(reSample)
    }
    theta.vals
}
vals <- bootIt(theSample = theSample, n = 10)
mean(vals)