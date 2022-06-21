library(ggplot2)
Theta=1.1       # Choose a value for Theta to be estimated
n=300           # Number of samples
x=rexp(n, rate=1/Theta)			# Generating n samples of exponentially distributed data
exp_LikeLihood <- function(theta) {
  LL = exp(-1*sum(x)/theta)/(theta^n)
}
Theta1=seq(0.7,1.5,length.out=20)
z<- exp_LikeLihood(Theta1)
plot(Theta1,z, type="l", xlab="Theta", ylab="LikeLihood")
sprintf("Theta =%4.2f would maximize the Likelihood function of this exponential distributed samples", Theta1[which(z == max(z))])