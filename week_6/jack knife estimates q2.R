lsat=c(576, 635, 558, 578, 666, 580, 555, 661, 651, 605, 653, 575, 545, 572, 594);
gpa=c(3.39, 3.3, 2.81, 3.03, 3.44, 3.07, 3, 3.43, 3.36, 3.13, 3.12, 2.74, 2.76, 2.88, 2.96);
set.seed(123456)
rho = cor(lsat, gpa)
rho.j <- numeric(15)
for(j in 1:15){
    rho.j[j] <- cor(lsat[-j], gpa[-j])
}
avg.jack <- mean(rho.j)
bias = (15-1)*(avg.jack - rho)
bias.adj = 15*rho - (15 - 1)*avg.jack
list(bias = bias, bias.adj = bias.adj)