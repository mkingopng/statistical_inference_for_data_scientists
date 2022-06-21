library(ggplot2)
lambda=4           # Choose a value for lambda to be estimated
x=rpois(1000,lambda=lambda)
plot(x, dpois(x,lambda), xlab="X", ylab="dpois(X,lambda)", pch= 19, col="blue")
poison_LL <- function(lambda) {
  LL =log(lambda)*sum(x)-sum(log(factorial(x)))-length(x)*lambda
}
lambda1=seq(2,6,length.out=30)		#Lambda search interval
z<- poison_LL(lambda1)
plot(lambda1,z, type="l", xlab="Theta", ylab="Log likelihood")
sprintf("Lambda =%4.2f would maximize the Log Likelihood function of this distribution", lambda1[which(z == max(z))])
sprintf("Lambda =%4.2f is the analytical solution", mean(x))
