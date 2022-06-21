library("MASS")
set.seed(123456)
mu = c(600.267, 3.09467)
sigma = matrix(c(1746.78, 7.90152, 7.90152, 0.0592981),
                nrow = 2, ncol = 2)
rho.hats <- numeric(1000)
for(i in 1:1000){
    bootstrapSample <- mvrnorm(n = 15, mu = mu, Sigma = sigma)
    rho.hats[i] <- cor(bootstrapSample[,1], bootstrapSample[,2])
}
sd(rho.hats)