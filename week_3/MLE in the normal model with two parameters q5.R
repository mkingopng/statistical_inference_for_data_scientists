set.seed(500)
library(ggplot2)
normal_LL <- function(mean,std) {
	# LL: Log of likelihood of a normal distribution,
    # x - set of observations. Should be initialized before MLE
  LL=0
  for (xi in x){
    LL =LL-0.5*log(2*pi)-log(std)-0.5*((xi-mean)/std)^2
  }
  LL
}
mean <- seq(-1, 1, by = 0.1)
std  <- seq(0.5, 1.5, by = 0.1)
x = rnorm(100,0,1)
z <- outer(mean, std, normal_LL)  ## evaluation on grid; obtain a matrix `z`
persp(mean, std, z, xlim=range(mean), ylim=range(std), zlim= range(z),
	  xlab="mean", ylab="std", zlab="Log Likelihood",
	  ltheta=45, lphi=60, r=2, expand=0.75, theta=30, phi=30,
	  ticktype="detailed", col="orange", shade=0.75)

par<- which(z == max(z), arr.ind = TRUE)
EstPar= c(mean[par[1]],std[par[2]])
Max_LL=max(z)
sprintf("Max_LL=%7.2f belongs to Est.mean=%3.1f and Est.std=%3.1f", Max_LL, EstPar[1],EstPar[2])
sprintf("Open the below pdf and look at the generated plot")