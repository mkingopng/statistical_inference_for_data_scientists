library(ggplot2)
x <- seq(-7, 7, by = 1/8)
# Range of x
y1 <- dt(x, df = 2)
# t distribution for 2 degrees of
y2 <- dt(x, df = 4)
# t distribution for 4 degrees of
y3 <- dt(x, df = 8)
# t distribution for 8 degrees of
y4 <- dt(x, df = 16)
# t distribution for 16 degrees of freed
y5 <- dt(x, df = 32)
# t distribution for 32 degrees of freed
plot(x, y1,type="l",xlab="X",ylab="t distribution", ylim=range(seq(0,0.4)))
lines(x, y2,type="l", col="red")
lines(x, y3,type="l", col="cyan")
lines(x, y4,type="l", col="green")
lines(x, y5,type="l", col="yellow")
legend("topright", legend=c("v=2","v=4", "v=8", "v=16", "v=32"),
       col=c("blue","red", "cyan", "green", "yellow"), lty=1)
