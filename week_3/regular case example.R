library(ggplot2)
theta <- 2.3           # Choose a value for theta to be estimated
y <- runif(10000,0,1)
x <- y^(1/theta)     # 10000 samples of the desired power distribution
power_LL <- function(theta) {
      LL <- length(x)*log(theta)+(theta-1)*sum(log(x))
  }
theta1 <- seq(1.5,4.5,length.out=30)   # Theta search interval
z<- power_LL(theta1)
plot(theta1,z, type="l", xlab="Theta", ylab="Log likelihood")
sprintf("Theta=%4.2f is the numerical solution which maximizies Log Likelihood function of this distribution", theta1[which(z == max(z))])
sprintf("Theta=%4.2f is the analytical solution", (-1)*length(x)/sum(log(x)))
sprintf("Open the below plot and look at the Log Likelihood variations with theta")