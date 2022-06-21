# assignment 3, part 2 q4e
theta<=seq(1,6,by=0.01)
p<=1-pchisq(qchisq(0.95,20)/theta,20)
plot(theta,p,type="l",xlab=expression(theta),ylab="Power")
dev.copy(jpeg, filename="plot.jpg");
dev.off();

