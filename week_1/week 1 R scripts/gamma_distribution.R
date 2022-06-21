n = 10000
alpha = 0.8
beta = 5
sim.dat = rgamma(n, alpha, beta)
hist(sim.dat, prob = TRUE, breaks = 100)
curve(dgamma(x,alpha,beta),add=TRUE,col="orange", lwd = 2)
