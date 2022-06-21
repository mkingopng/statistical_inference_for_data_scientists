library(ggplot2)
p= seq(0,1,by=0.01);
MSE_mean=-0.25*(p-1)*p;
MSE_median=2.5*(p-1)^2*p^2
plot(p, MSE_mean, type="l", col="red", xlab=expression(p), ylab="MSE", ylim=0.15)
lines(p, MSE_median, col="blue", type="l", lty=2)
legend(x=0.45,y=0.10, legend=c("Mean","Median"),
       col=c("red","blue"), lty=1)
