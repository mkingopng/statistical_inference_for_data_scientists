library(ggplot2)
p= seq(0.1,0.9,by=0.05);
Fisher_mean=4/(p-p^2);
Fisher_median=-24*(p^2-p+4)/(9*p^2-9*p-4)
plot(p, Fisher_mean, type="l", col="red", xlab=expression(p), ylab="Fisher")
lines(p, Fisher_median, col="blue", type="l", lty=2)
legend(x=0.45,y=35, legend=c("Mean","Median"), 
       col=c("red","blue"), lty=1)
